import 'dart:async';

/// Indicates the impact of a policy violation.
enum EnforcementLevel {
  advisory,
  mandatory,
  remediate,
  disabled,
}

/// Indicates the severity of a policy.
enum Severity {
  low,
  medium,
  high,
  critical,
}

/// Report a policy violation with a message and optional resource URN.
typedef ReportViolation = void Function(String message, [String? urn]);

/// A value marked as secret so remediation output can preserve sensitivity.
class Secret {
  const Secret(this.value);

  final Object? value;
}

/// JSON schema-like configuration metadata for a policy.
class PolicyConfigSchema {
  PolicyConfigSchema({
    required this.properties,
    this.required,
  }) {
    if (properties.containsKey('enforcementLevel')) {
      throw ArgumentError.value(
        properties,
        'properties',
        'enforcementLevel cannot be explicitly specified in properties',
      );
    }
    if (required != null && required!.contains('enforcementLevel')) {
      throw ArgumentError.value(
        required,
        'required',
        '"enforcementLevel" cannot be specified in required',
      );
    }
  }

  final Map<String, Map<String, Object?>> properties;
  final List<String>? required;
}

/// Represents a compliance framework that a policy belongs to.
class PolicyComplianceFramework {
  const PolicyComplianceFramework({
    this.name,
    this.version,
    this.reference,
    this.specification,
  });

  final String? name;
  final String? version;
  final String? reference;
  final String? specification;
}

/// Base class for policies.
abstract class Policy {
  Policy({
    required this.name,
    required this.description,
    this.enforcementLevel,
    this.configSchema,
    this.displayName,
    this.severity,
    this.framework,
    this.tags,
    this.remediationSteps,
    this.url,
  }) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Policy name cannot be empty');
    }
    if (name == 'all') {
      throw ArgumentError.value(
        name,
        'name',
        '"all" is a reserved policy name',
      );
    }
    if (description.isEmpty) {
      throw ArgumentError.value(
        description,
        'description',
        'Policy description cannot be empty',
      );
    }
  }

  final String name;
  final String description;
  final EnforcementLevel? enforcementLevel;
  final PolicyConfigSchema? configSchema;
  final String? displayName;
  final Severity? severity;
  final PolicyComplianceFramework? framework;
  final List<String>? tags;
  final String? remediationSteps;
  final String? url;
}

/// Callback signature for resource policy validation.
typedef ResourceValidation =
    FutureOr<void> Function(
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// Callback signature for resource policy remediation.
typedef ResourceRemediation =
    FutureOr<Map<String, Object?>?> Function(
      ResourceValidationArgs args,
    );

/// Callback used for combined remediation/validation implementations.
typedef ResourceValidationRemediation =
    FutureOr<Map<String, Object?>?> Function(
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// A policy that validates and/or remediates resource definitions.
class ResourceValidationPolicy extends Policy {
  ResourceValidationPolicy({
    required super.name,
    required super.description,
    super.enforcementLevel,
    super.configSchema,
    super.displayName,
    super.severity,
    super.framework,
    super.tags,
    super.remediationSteps,
    super.url,
    List<ResourceValidation>? validateResource,
    this.remediateResource,
  }) : validateResource = validateResource ?? const [] {
    if (this.validateResource.isEmpty && remediateResource == null) {
      throw ArgumentError(
        'At least one validateResource callback or a remediateResource callback is required.',
      );
    }
  }

  final List<ResourceValidation> validateResource;
  final ResourceRemediation? remediateResource;
}

/// Callback signature for stack policy validation.
typedef StackValidation =
    FutureOr<void> Function(
      StackValidationArgs args,
      ReportViolation reportViolation,
    );

/// A policy that validates the full stack of resources.
class StackValidationPolicy extends Policy {
  StackValidationPolicy({
    required super.name,
    required super.description,
    required this.validateStack,
    super.enforcementLevel,
    super.configSchema,
    super.displayName,
    super.severity,
    super.framework,
    super.tags,
    super.remediationSteps,
    super.url,
  });

  final StackValidation validateStack;
}

/// Resource options visible to policy runtime callbacks.
class PolicyResourceOptions {
  const PolicyResourceOptions({
    required this.protect,
    required this.ignoreChanges,
    required this.aliases,
    required this.customTimeouts,
    required this.additionalSecretOutputs,
    this.deleteBeforeReplace,
    this.parent,
  });

  final bool protect;
  final List<String> ignoreChanges;
  final bool? deleteBeforeReplace;
  final List<String> aliases;
  final PolicyCustomTimeouts customTimeouts;
  final List<String> additionalSecretOutputs;
  final String? parent;
}

/// Custom timeout settings visible to policy runtime callbacks.
class PolicyCustomTimeouts {
  const PolicyCustomTimeouts({
    required this.createSeconds,
    required this.updateSeconds,
    required this.deleteSeconds,
  });

  final double createSeconds;
  final double updateSeconds;
  final double deleteSeconds;
}

/// Provider metadata available in policy callbacks.
class PolicyProviderResource {
  const PolicyProviderResource({
    required this.type,
    required this.props,
    required this.urn,
    required this.name,
  });

  final String type;
  final Map<String, Object?> props;
  final String urn;
  final String name;
}

/// Resource context available in policy callbacks.
class PolicyResource {
  PolicyResource({
    required this.type,
    required this.props,
    required this.urn,
    required this.name,
    required this.opts,
    required this.dependencies,
    required this.propertyDependencies,
    this.provider,
    this.parent,
  });

  final String type;
  final Map<String, Object?> props;
  final String urn;
  final String name;
  final PolicyResourceOptions opts;
  final PolicyProviderResource? provider;
  PolicyResource? parent;
  final List<PolicyResource> dependencies;
  final Map<String, List<PolicyResource>> propertyDependencies;

  bool isType(String resourceType) => type == resourceType;

  T? asType<T extends Map<String, Object?>>(String resourceType) {
    if (!isType(resourceType)) {
      return null;
    }
    final value = props;
    if (value is T) {
      return value;
    }
    throw StateError(
      'Resource props for type "$resourceType" were not assignable to requested type $T.',
    );
  }
}

/// Thrown when a policy intentionally marks itself as not applicable.
class PolicyNotApplicableError implements Exception {
  const PolicyNotApplicableError([this.reason]);

  final String? reason;

  @override
  String toString() => reason == null
      ? 'PolicyNotApplicableError'
      : 'PolicyNotApplicableError: $reason';
}

/// Context passed to resource validation/remediation callbacks.
class ResourceValidationArgs {
  const ResourceValidationArgs({
    required this.type,
    required this.props,
    required this.urn,
    required this.name,
    required this.opts,
    required this.stackTags,
    this.provider,
    Map<String, Object?> config = const {},
  }) : _config = config;

  final String type;
  final Map<String, Object?> props;
  final String urn;
  final String name;
  final PolicyResourceOptions opts;
  final PolicyProviderResource? provider;
  final Map<String, String> stackTags;
  final Map<String, Object?> _config;

  bool isType(String resourceType) => type == resourceType;

  T? asType<T extends Map<String, Object?>>(String resourceType) {
    if (!isType(resourceType)) {
      return null;
    }
    if (props is T) {
      return props as T;
    }
    throw StateError(
      'Resource props for type "$resourceType" were not assignable to requested type $T.',
    );
  }

  T getConfig<T extends Map<String, Object?>>() {
    if (_config is T) {
      return _config;
    }
    throw StateError('Policy config was not assignable to requested type $T.');
  }

  Never notApplicable([String? reason]) =>
      throw PolicyNotApplicableError(reason);
}

/// Context passed to stack validation callbacks.
class StackValidationArgs {
  const StackValidationArgs({
    required this.resources,
    required this.stackTags,
    Map<String, Object?> config = const {},
  }) : _config = config;

  final List<PolicyResource> resources;
  final Map<String, String> stackTags;
  final Map<String, Object?> _config;

  T getConfig<T extends Map<String, Object?>>() {
    if (_config is T) {
      return _config;
    }
    throw StateError('Policy config was not assignable to requested type $T.');
  }

  Never notApplicable([String? reason]) =>
      throw PolicyNotApplicableError(reason);
}

/// A collection of policies associated with a policy pack.
typedef Policies = List<Policy>;

/// Configuration map keyed by policy name.
typedef PolicyPackConfig = Map<String, Object?>;

/// Construction arguments for [PolicyPack].
class PolicyPackArgs {
  const PolicyPackArgs({
    required this.policies,
    this.enforcementLevel,
    this.description,
    this.displayName,
    this.readme,
    this.provider,
    this.tags,
    this.repository,
  });

  final Policies policies;
  final EnforcementLevel? enforcementLevel;
  final String? description;
  final String? displayName;
  final String? readme;
  final String? provider;
  final List<String>? tags;
  final String? repository;
}

/// A policy pack that contains one or more policies.
class PolicyPack {
  PolicyPack(this.name, this.args, {this.initialConfig}) {
    if (name.isEmpty) {
      throw ArgumentError.value(
        name,
        'name',
        'Policy pack name cannot be empty',
      );
    }
    if (!_policyPackNameRegExp.hasMatch(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'Policy pack names may only contain alphanumerics, hyphens, underscores, or periods.',
      );
    }
    if (args.policies.isEmpty) {
      throw ArgumentError.value(
        args.policies,
        'policies',
        'At least one policy is required.',
      );
    }

    // TODO(pulumi-dart): implement analyzer gRPC runtime equivalent to
    // pulumi-policy Node/Python SDKs.
    throw UnsupportedError(
      'Policy runtime is not implemented for Dart yet. '
      'You can define policies with this package, but policy server execution is pending.',
    );
  }

  static final RegExp _policyPackNameRegExp = RegExp(
    r'^[a-zA-Z0-9-_.]{1,100}$',
  );

  final String name;
  final PolicyPackArgs args;
  final PolicyPackConfig? initialConfig;
}

/// Type-safe resource validation callback.
typedef TypedResourceValidation<TProps extends Map<String, Object?>> =
    FutureOr<void> Function(
      TProps props,
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// Type-safe resource remediation callback.
typedef TypedResourceRemediation<TProps extends Map<String, Object?>> =
    FutureOr<Map<String, Object?>?> Function(
      TProps props,
      ResourceValidationArgs args,
    );

/// Type-safe combined resource validation + remediation callback.
typedef TypedResourceValidationRemediation<
  TProps extends Map<String, Object?>
> =
    FutureOr<Map<String, Object?>?> Function(
      TProps props,
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// Return value for [validateRemediateResourceOfType].
class ValidateRemediateResource {
  const ValidateRemediateResource({
    required this.validateResource,
    required this.remediateResource,
  });

  final ResourceValidation validateResource;
  final ResourceRemediation remediateResource;
}

/// Creates a type-scoped remediation callback for the provided [resourceType].
ResourceRemediation
remediateResourceOfType<TProps extends Map<String, Object?>>(
  String resourceType,
  TypedResourceRemediation<TProps> remediate,
) {
  return (args) {
    final props = args.asType<TProps>(resourceType);
    if (props == null) {
      args.notApplicable(
        'Policy only applies to resources of type "$resourceType"',
      );
    }
    return remediate(props, args);
  };
}

/// Creates a type-scoped validation callback for the provided [resourceType].
ResourceValidation validateResourceOfType<TProps extends Map<String, Object?>>(
  String resourceType,
  TypedResourceValidation<TProps> validate,
) {
  return (args, reportViolation) {
    final props = args.asType<TProps>(resourceType);
    if (props == null) {
      args.notApplicable(
        'Policy only applies to resources of type "$resourceType"',
      );
    }
    return validate(props, args, reportViolation);
  };
}

/// Creates paired validate/remediate callbacks for one type-scoped implementation.
ValidateRemediateResource
validateRemediateResourceOfType<TProps extends Map<String, Object?>>(
  String resourceType,
  TypedResourceValidationRemediation<TProps> validateRemediate,
) {
  final validate = validateResourceOfType<TProps>(
    resourceType,
    validateRemediate,
  );
  final remediate = remediateResourceOfType<TProps>(resourceType, (
    props,
    args,
  ) {
    return validateRemediate(props, args, (_, [__]) {});
  });
  return ValidateRemediateResource(
    validateResource: validate,
    remediateResource: remediate,
  );
}

/// Creates a type-scoped stack validation callback for [resourceType].
StackValidation
validateStackResourcesOfType<TProps extends Map<String, Object?>>(
  String resourceType,
  FutureOr<void> Function(
    List<TProps> resources,
    StackValidationArgs args,
    ReportViolation reportViolation,
  )
  validate,
) {
  return (args, reportViolation) {
    final matchingResources = args.resources
        .where((resource) => resource.isType(resourceType))
        .toList();
    if (matchingResources.isEmpty) {
      args.notApplicable(
        'Policy only applies to resources of type "$resourceType"',
      );
    }

    final typedResources = matchingResources
        .map((resource) => resource.asType<TProps>(resourceType)!)
        .toList(growable: false);

    final typedArgs = StackValidationArgs(
      resources: matchingResources,
      stackTags: args.stackTags,
      config: args._config,
    );

    return validate(typedResources, typedArgs, reportViolation);
  };
}

/// Returns `true` if [policy] is a [ResourceValidationPolicy].
bool isResourcePolicy(Policy policy) => policy is ResourceValidationPolicy;

/// Returns `true` if [policy] is a [StackValidationPolicy].
bool isStackPolicy(Policy policy) => policy is StackValidationPolicy;
