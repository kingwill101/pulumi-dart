// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_config.dart';
import 'service_perimeter_perimeter_type.dart';

/// {@template pulumi_accesscontextmanager_v1_service_perimeter_args_doc}
/// The set of arguments for ServicePerimeter.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_service_perimeter_args_doc}
class ServicePerimeterArgs {
  final pulumi.Input<String> accessPolicyId;

  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  final pulumi.Input<String>? description;

  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  final pulumi.Input<String>? name;

  /// Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
  final pulumi.Input<ServicePerimeterPerimeterType>? perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the "use_explicit_dry_run_spec" flag is set.
  final pulumi.Input<ServicePerimeterConfig>? spec;

  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String>? title;

  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration ("spec") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config ("status") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use_explicit_dry_run_spec must bet set to True if any of the fields in the spec are set to non-default values.
  final pulumi.Input<bool>? useExplicitDryRunSpec;

  /// Creates a new [ServicePerimeterArgs].
  /// [accessPolicyId] Required.
  /// [description] Description of the `ServicePerimeter` and its use. Does not affect behavior.
  /// [name] Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  /// [perimeterType] Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
  /// [spec] Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the "use_explicit_dry_run_spec" flag is set.
  /// [title] Human readable title. Must be unique within the Policy.
  /// [useExplicitDryRunSpec] Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration ("spec") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config ("status") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use_explicit_dry_run_spec must bet set to True if any of the fields in the spec are set to non-default values.
  ServicePerimeterArgs({
    required String accessPolicyId,
    String? description,
    String? name,
    ServicePerimeterPerimeterType? perimeterType,
    ServicePerimeterConfig? spec,
    String? title,
    bool? useExplicitDryRunSpec,
  })  : accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        perimeterType =
            pulumi.Input.asOptionalInput<ServicePerimeterPerimeterType>(
                perimeterType),
        spec = pulumi.Input.asOptionalInput<ServicePerimeterConfig>(spec),
        title = pulumi.Input.asOptionalInput<String>(title),
        useExplicitDryRunSpec =
            pulumi.Input.asOptionalInput<bool>(useExplicitDryRunSpec);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final perimeterTypeValue = perimeterType;
    if (perimeterTypeValue != null) {
      map['perimeterType'] = pulumi.Input.mapOptionalInputValue<
          ServicePerimeterPerimeterType,
          String>(perimeterTypeValue, (value) => value.value);
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = pulumi.Input.mapOptionalInputValue<ServicePerimeterConfig,
          Map<String, dynamic>>(specValue, (value) => value.toMap());
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    final useExplicitDryRunSpecValue = useExplicitDryRunSpec;
    if (useExplicitDryRunSpecValue != null) {
      map['useExplicitDryRunSpec'] = useExplicitDryRunSpecValue;
    }
    return map;
  }

  factory ServicePerimeterArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterArgs(
      accessPolicyId: map['accessPolicyId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      perimeterType: map['perimeterType'] == null
          ? null
          : ServicePerimeterPerimeterType.fromValue(
              map['perimeterType'] as String),
      spec: map['spec'] == null
          ? null
          : ServicePerimeterConfig.fromMap(
              (map['spec'] as Map).cast<String, dynamic>()),
      title: map['title'] == null ? null : map['title'] as String,
      useExplicitDryRunSpec: map['useExplicitDryRunSpec'] == null
          ? null
          : map['useExplicitDryRunSpec'] as bool,
    );
  }
}
