// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_service_binding.dart';
import 'dapr_metadata.dart';
import 'secret.dart';

/// {@template pulumi_app_connected_environments_dapr_component_args_doc}
/// The set of arguments for ConnectedEnvironmentsDaprComponent.
/// {@endtemplate}
/// {@macro pulumi_app_connected_environments_dapr_component_args_doc}
class ConnectedEnvironmentsDaprComponentArgs {
  /// Name of the Dapr Component.
  final pulumi.Input<String>? componentName;
  /// Component type
  final pulumi.Input<String>? componentType;
  /// Name of the connected environment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// Boolean describing if the component errors are ignores
  final pulumi.Input<bool>? ignoreErrors;
  /// Initialization timeout
  final pulumi.Input<String>? initTimeout;
  /// Component metadata
  final pulumi.Input<List<DaprMetadata>>? metadata;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Names of container apps that can use this Dapr component
  final pulumi.Input<List<String>>? scopes;
  /// Name of a Dapr component to retrieve component secrets from
  final pulumi.Input<String>? secretStoreComponent;
  /// Collection of secrets used by a Dapr component
  final pulumi.Input<List<Secret>>? secrets;
  /// List of container app services that are bound to the Dapr component
  final pulumi.Input<List<DaprComponentServiceBinding>>? serviceComponentBind;
  /// Component version
  final pulumi.Input<String>? version;

  /// Creates a new [ConnectedEnvironmentsDaprComponentArgs].
  /// [componentName] Name of the Dapr Component.
  /// [componentType] Component type
  /// [connectedEnvironmentName] Name of the connected environment.
  /// [ignoreErrors] Boolean describing if the component errors are ignores
  /// [initTimeout] Initialization timeout
  /// [metadata] Component metadata
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopes] Names of container apps that can use this Dapr component
  /// [secretStoreComponent] Name of a Dapr component to retrieve component secrets from
  /// [secrets] Collection of secrets used by a Dapr component
  /// [serviceComponentBind] List of container app services that are bound to the Dapr component
  /// [version] Component version
  ConnectedEnvironmentsDaprComponentArgs({
    this.componentName,
    this.componentType,
    required this.connectedEnvironmentName,
    this.ignoreErrors,
    this.initTimeout,
    this.metadata,
    required this.resourceGroupName,
    this.scopes,
    this.secretStoreComponent,
    this.secrets,
    this.serviceComponentBind,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': ?componentName,
      'componentType': ?componentType,
      'connectedEnvironmentName': connectedEnvironmentName,
      'ignoreErrors': ?ignoreErrors,
      'initTimeout': ?initTimeout,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<DaprMetadata>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<DaprMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'scopes': ?scopes,
      'secretStoreComponent': ?secretStoreComponent,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<Secret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<Secret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceComponentBind': ?pulumi.Input.mapOptionalInputValue<List<DaprComponentServiceBinding>, List<Map<String, dynamic>>>(serviceComponentBind, (value) => pulumi.Input.encodeList<DaprComponentServiceBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory ConnectedEnvironmentsDaprComponentArgs.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentsDaprComponentArgs(
      componentName: map['componentName'] == null ? null : (map['componentName']! as String).input(),
      componentType: map['componentType'] == null ? null : (map['componentType']! as String).input(),
      connectedEnvironmentName: (map['connectedEnvironmentName'] as String).input(),
      ignoreErrors: map['ignoreErrors'] == null ? null : (map['ignoreErrors']! as bool).input(),
      initTimeout: map['initTimeout'] == null ? null : (map['initTimeout']! as String).input(),
      metadata: map['metadata'] == null ? null : (pulumi.Input.decodeList<DaprMetadata>(map['metadata']!, (value) => DaprMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
      secretStoreComponent: map['secretStoreComponent'] == null ? null : (map['secretStoreComponent']! as String).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<Secret>(map['secrets']!, (value) => Secret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceComponentBind: map['serviceComponentBind'] == null ? null : (pulumi.Input.decodeList<DaprComponentServiceBinding>(map['serviceComponentBind']!, (value) => DaprComponentServiceBinding.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

