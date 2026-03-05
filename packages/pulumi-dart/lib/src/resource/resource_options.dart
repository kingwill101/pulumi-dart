import 'package:pulumi/src/alias.dart';
import 'package:pulumi/src/input.dart';

import 'provider_resource.dart';
import 'resource.dart';
import 'resource_hooks.dart';
import 'resource_transformation.dart';

/// {@template pulumi.custom_timeouts.summary}
/// Per-operation timeout overrides for custom resources.
///
/// Timeout strings follow Pulumi duration formats (for example `5m`, `1h`).
/// {@endtemplate}
///
class CustomTimeouts {
  /// Create operation timeout.
  final String? create;

  /// Update operation timeout.
  final String? update;

  /// Delete operation timeout.
  final String? delete;

  const CustomTimeouts({this.create, this.update, this.delete});
}

/// {@template pulumi.resource_options.summary}
/// A bag of optional controls for resource registration and lifecycle behavior.
///
/// These options map to Pulumi's cross-language `ResourceOptions` concept.
/// Common controls include parent/provider inheritance, explicit dependencies,
/// aliases for rename/reparent operations, replacement/deletion behavior, and
/// plugin/version selection.
///
/// Most user code will only set a small subset:
/// - [parent]
/// - [dependsOn]
/// - [provider]
/// - [protect]
/// - [ignoreChanges]
/// - [deleteBeforeReplace]
///
/// Component authors and advanced library code may also use:
/// - [providers]
/// - [aliases]
/// - [resourceTransformations]
/// - [resourceTransforms]
/// - [hooks]
///
/// ## Precedence
/// When options are merged, scalar values use "last non-null wins" and
/// collection values are concatenated.
///
/// ## Example
/// ```dart
/// final opts = ResourceOptions(
///   protect: true,
///   ignoreChanges: ['tags'],
/// );
/// ```
///
/// ## Example (advanced)
/// ```dart
/// final opts = ResourceOptions(
///   dependsOn: [networkResource],
///   aliases: [Alias(name: Input.fromValue('old-name'))],
///   customTimeouts: CustomTimeouts(create: '10m', update: '10m'),
///   deleteBeforeReplace: false,
/// );
/// ```
/// {@endtemplate}
///
class ResourceOptions {
  /// Existing resource ID for read/import-style operations.
  final Input<String>? id;

  /// Existing resource URN for read-style operations.
  final Input<String>? urn;

  /// Property names to hide from diff output.
  final List<String>? hideDiffs;

  /// Property names that trigger replacement when changed.
  final List<String>? replaceWith;

  /// Environment variable mappings for provider configuration.
  final Map<String, String>? envVarMappings;

  /// Parent resource used for hierarchy/provider inheritance.
  final Resource? parent;

  /// Explicit dependency edges that must complete before this resource.
  final List<Resource>? dependsOn;

  /// When `true`, prevents deletion unless protection is removed.
  final bool? protect;

  /// Explicit provider instance for provider-managed resources/invokes.
  final ProviderResource? provider;

  /// Provider map candidates used by components and package scoping.
  final List<ProviderResource> providers;

  /// Prior identities used to avoid replacement during renames/reparents.
  final List<Alias>? aliases;

  /// Per-operation timeout overrides for custom resources.
  final CustomTimeouts? customTimeouts;

  /// When `true`, delete before replace instead of create-before-delete.
  final bool? deleteBeforeReplace;

  /// When `true`, retain remote object during deletion from state.
  final bool? retainOnDelete;

  /// Deletes this resource when [deletedWith] is deleted.
  final Resource? deletedWith;

  /// Output property names to always mark as secret.
  final List<String>? additionalSecretOutputs;

  /// Property names ignored during diff.
  final List<String>? ignoreChanges;

  /// Property names that force replacement when changed.
  final List<String>? replaceOnChanges;

  /// Provider plugin version constraint.
  final String? version;

  /// Provider plugin download URL override.
  final String? pluginDownloadURL;

  /// Arbitrary provider-specific replacement trigger metadata.
  final dynamic replacementTrigger;

  /// Legacy synchronous transformations.
  final List<ResourceTransformation> resourceTransformations;

  /// Async resource transforms.
  final List<ResourceTransform> resourceTransforms;

  /// Lifecycle and error hooks grouped by phase.
  final ResourceHookBinding? hooks;

  const ResourceOptions({
    this.id,
    this.urn,
    this.hideDiffs,
    this.replaceWith,
    this.envVarMappings,
    this.parent,
    this.dependsOn,
    this.protect,
    this.provider,
    List<ProviderResource>? providers,
    this.aliases,
    this.customTimeouts,
    this.deleteBeforeReplace,
    this.retainOnDelete,
    this.deletedWith,
    this.additionalSecretOutputs,
    this.ignoreChanges,
    this.replaceOnChanges,
    this.version,
    this.pluginDownloadURL,
    this.replacementTrigger,
    this.resourceTransformations = const [],
    this.resourceTransforms = const [],
    this.hooks,
  }) : providers = providers ?? const [];

  /// Returns the effective replacement trigger payload.
  dynamic get effectiveReplacementTrigger => replacementTrigger;

  /// Merges [options] onto this instance.
  ///
  /// Scalar fields use "last non-null wins", while list-like fields are
  /// concatenated to preserve inherited and local values.
  ///
  /// This behavior matches Pulumi SDK behavior in other languages.
  ResourceOptions merge(ResourceOptions? options) {
    if (options == null) return this;

    options = createComponentResourceOptionsCopy(options);
    var options2 = createComponentResourceOptionsCopy(this);

    return ResourceOptions(
      id: options.id ?? id,
      urn: options.urn ?? urn,
      hideDiffs: [...?hideDiffs, ...?options.hideDiffs],
      replaceWith: [...?replaceWith, ...?options.replaceWith],
      envVarMappings: mergeEnvVarMappings(
        envVarMappings,
        options.envVarMappings,
      ),
      parent: options.parent ?? parent,
      dependsOn: [...?dependsOn, ...?options.dependsOn],
      protect: options.protect ?? protect,
      resourceTransformations: [
        ...options2.resourceTransformations,
        ...options.resourceTransformations,
      ],
      resourceTransforms: [
        ...options2.resourceTransforms,
        ...options.resourceTransforms,
      ],
      provider: options.provider ?? provider,
      providers: mergeProviders(options2.providers, options.providers),
      aliases: [...?aliases, ...?options.aliases],
      customTimeouts: options.customTimeouts ?? customTimeouts,
      deleteBeforeReplace: options.deleteBeforeReplace ?? deleteBeforeReplace,
      retainOnDelete: options.retainOnDelete ?? retainOnDelete,
      deletedWith: options.deletedWith ?? deletedWith,
      additionalSecretOutputs: [
        ...?additionalSecretOutputs,
        ...?options.additionalSecretOutputs,
      ],
      ignoreChanges: [...?ignoreChanges, ...?options.ignoreChanges],
      replaceOnChanges: [...?replaceOnChanges, ...?options.replaceOnChanges],
      version: options.version ?? version,
      pluginDownloadURL: options.pluginDownloadURL ?? pluginDownloadURL,
      replacementTrigger: options.replacementTrigger ?? replacementTrigger,
      hooks: mergeHooks(hooks, options.hooks),
    );
  }

  ResourceOptions clone() => createComponentResourceOptionsCopy(this);
}

/// Merges two hook bindings by phase.
///
/// Hook lists are concatenated in order so inherited hooks run before more
/// specific hooks added later in the resource tree.
ResourceHookBinding? mergeHooks(
  ResourceHookBinding? binding1,
  ResourceHookBinding? binding2,
) {
  if (binding1 == null && binding2 == null) {
    return null;
  }

  return ResourceHookBinding(
    beforeCreate: [...?binding1?.beforeCreate, ...?binding2?.beforeCreate],
    afterCreate: [...?binding1?.afterCreate, ...?binding2?.afterCreate],
    beforeUpdate: [...?binding1?.beforeUpdate, ...?binding2?.beforeUpdate],
    afterUpdate: [...?binding1?.afterUpdate, ...?binding2?.afterUpdate],
    beforeDelete: [...?binding1?.beforeDelete, ...?binding2?.beforeDelete],
    afterDelete: [...?binding1?.afterDelete, ...?binding2?.afterDelete],
    onError: [...?binding1?.onError, ...?binding2?.onError],
  );
}

/// Merges provider lists using package name as the uniqueness key.
///
/// When both lists include the same package, the latter provider wins.
List<ProviderResource> mergeProviders(
  List<ProviderResource> prov1,
  List<ProviderResource> prov2,
) {
  final byPackage = <String, ProviderResource>{};
  for (final provider in [...prov1, ...prov2]) {
    // Keep one provider per package while preserving stable "last writer wins"
    // ordering by moving overwritten keys to the end.
    byPackage.remove(provider.package);
    byPackage[provider.package] = provider;
  }
  return byPackage.values.toList(growable: false);
}

/// Merges environment variable mappings, with later values overriding earlier ones.
///
/// Returns `null` only when both inputs are `null`.
Map<String, String>? mergeEnvVarMappings(
  Map<String, String>? mappings1,
  Map<String, String>? mappings2,
) {
  if (mappings1 == null && mappings2 == null) {
    return null;
  }
  final result = <String, String>{};
  if (mappings1 != null) {
    result.addAll(mappings1);
  }
  if (mappings2 != null) {
    result.addAll(mappings2);
  }
  return result;
}

/// Creates a defensive copy of [options].
///
/// This is primarily used internally while merging options so callers do not
/// observe unexpected mutation of collection fields.
ResourceOptions createComponentResourceOptionsCopy(ResourceOptions options) {
  return ResourceOptions(
    id: options.id,
    urn: options.urn,
    hideDiffs: options.hideDiffs != null ? List.from(options.hideDiffs!) : null,
    replaceWith: options.replaceWith != null
        ? List.from(options.replaceWith!)
        : null,
    envVarMappings: options.envVarMappings != null
        ? Map.from(options.envVarMappings!)
        : null,
    parent: options.parent,
    dependsOn: options.dependsOn != null ? List.from(options.dependsOn!) : null,
    protect: options.protect,
    provider: options.provider,
    providers: List.from(options.providers),
    resourceTransformations: List.from(options.resourceTransformations),
    resourceTransforms: List.from(options.resourceTransforms),
    aliases: options.aliases != null ? List.from(options.aliases!) : null,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
    customTimeouts: options.customTimeouts,
    deleteBeforeReplace: options.deleteBeforeReplace,
    retainOnDelete: options.retainOnDelete,
    deletedWith: options.deletedWith,
    additionalSecretOutputs: options.additionalSecretOutputs != null
        ? List.from(options.additionalSecretOutputs!)
        : null,
    ignoreChanges: options.ignoreChanges,
    replaceOnChanges: options.replaceOnChanges != null
        ? List.from(options.replaceOnChanges!)
        : null,
    replacementTrigger: options.replacementTrigger,
    hooks: options.hooks == null
        ? null
        : ResourceHookBinding(
            beforeCreate: List.from(options.hooks!.beforeCreate),
            afterCreate: List.from(options.hooks!.afterCreate),
            beforeUpdate: List.from(options.hooks!.beforeUpdate),
            afterUpdate: List.from(options.hooks!.afterUpdate),
            beforeDelete: List.from(options.hooks!.beforeDelete),
            afterDelete: List.from(options.hooks!.afterDelete),
            onError: List.from(options.hooks!.onError),
          ),
  );
}
