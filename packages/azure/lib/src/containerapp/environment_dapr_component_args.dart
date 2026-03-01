// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_dapr_component_metadata.dart';
import 'environment_dapr_component_secret.dart';

/// {@template pulumi_containerapp_environment_dapr_component_environment_dapr_component_args_doc}
/// The set of arguments for EnvironmentDaprComponent.
/// {@endtemplate}
/// {@macro pulumi_containerapp_environment_dapr_component_environment_dapr_component_args_doc}
class EnvironmentDaprComponentArgs {
  /// The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created.
  final pulumi.Input<String> componentType;
  /// The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false`
  final pulumi.Input<bool>? ignoreErrors;
  /// The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`.
  final pulumi.Input<String>? initTimeout;
  /// One or more `metadata` blocks as detailed below.
  final pulumi.Input<List<EnvironmentDaprComponentMetadata>>? metadatas;
  /// The name for this Dapr component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of scopes to which this component applies.
  ///
  /// > **Note:** See the official docs for more information at https://learn.microsoft.com/en-us/azure/container-apps/dapr-overview?tabs=bicep1%2Cyaml#component-scopes
  final pulumi.Input<List<String>>? scopes;
  /// A `secret` block as detailed below.
  final pulumi.Input<List<EnvironmentDaprComponentSecret>>? secrets;
  /// The version of the component.
  final pulumi.Input<String> version;

  /// Creates a new [EnvironmentDaprComponentArgs].
  /// [componentType] The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentId] The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created.
  /// [ignoreErrors] Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false`
  /// [initTimeout] The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`.
  /// [metadatas] One or more `metadata` blocks as detailed below.
  /// [name] The name for this Dapr component. Changing this forces a new resource to be created.
  /// [scopes] A list of scopes to which this component applies.
  /// [secrets] A `secret` block as detailed below.
  /// [version] The version of the component.
  EnvironmentDaprComponentArgs({
    required String componentType,
    required String containerAppEnvironmentId,
    bool? ignoreErrors,
    String? initTimeout,
    List<EnvironmentDaprComponentMetadata>? metadatas,
    String? name,
    List<String>? scopes,
    List<EnvironmentDaprComponentSecret>? secrets,
    required String version,
  }) :
      componentType = pulumi.Input.asInput<String>(componentType),
      containerAppEnvironmentId = pulumi.Input.asInput<String>(containerAppEnvironmentId),
      ignoreErrors = pulumi.Input.asOptionalInput<bool>(ignoreErrors),
      initTimeout = pulumi.Input.asOptionalInput<String>(initTimeout),
      metadatas = pulumi.Input.asOptionalInput<List<EnvironmentDaprComponentMetadata>>(metadatas),
      name = pulumi.Input.asOptionalInput<String>(name),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      secrets = pulumi.Input.asOptionalInput<List<EnvironmentDaprComponentSecret>>(secrets),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'ignoreErrors': ?ignoreErrors,
      'initTimeout': ?initTimeout,
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentDaprComponentMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<EnvironmentDaprComponentMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'scopes': ?scopes,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentDaprComponentSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<EnvironmentDaprComponentSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory EnvironmentDaprComponentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentDaprComponentArgs(
      componentType: map['componentType'] as String,
      containerAppEnvironmentId: map['containerAppEnvironmentId'] as String,
      ignoreErrors: map['ignoreErrors'] == null ? null : map['ignoreErrors'] as bool,
      initTimeout: map['initTimeout'] == null ? null : map['initTimeout'] as String,
      metadatas: map['metadatas'] == null ? null : pulumi.Input.decodeList<EnvironmentDaprComponentMetadata>(map['metadatas'], (value) => EnvironmentDaprComponentMetadata.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<EnvironmentDaprComponentSecret>(map['secrets'], (value) => EnvironmentDaprComponentSecret.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}

