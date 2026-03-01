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
    String? componentName,
    String? componentType,
    required String connectedEnvironmentName,
    bool? ignoreErrors,
    String? initTimeout,
    List<DaprMetadata>? metadata,
    required String resourceGroupName,
    List<String>? scopes,
    String? secretStoreComponent,
    List<Secret>? secrets,
    List<DaprComponentServiceBinding>? serviceComponentBind,
    String? version,
  }) :
      componentName = pulumi.Input.asOptionalInput<String>(componentName),
      componentType = pulumi.Input.asOptionalInput<String>(componentType),
      connectedEnvironmentName = pulumi.Input.asInput<String>(connectedEnvironmentName),
      ignoreErrors = pulumi.Input.asOptionalInput<bool>(ignoreErrors),
      initTimeout = pulumi.Input.asOptionalInput<String>(initTimeout),
      metadata = pulumi.Input.asOptionalInput<List<DaprMetadata>>(metadata),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      secretStoreComponent = pulumi.Input.asOptionalInput<String>(secretStoreComponent),
      secrets = pulumi.Input.asOptionalInput<List<Secret>>(secrets),
      serviceComponentBind = pulumi.Input.asOptionalInput<List<DaprComponentServiceBinding>>(serviceComponentBind),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      componentName: map['componentName'] == null ? null : map['componentName'] as String,
      componentType: map['componentType'] == null ? null : map['componentType'] as String,
      connectedEnvironmentName: map['connectedEnvironmentName'] as String,
      ignoreErrors: map['ignoreErrors'] == null ? null : map['ignoreErrors'] as bool,
      initTimeout: map['initTimeout'] == null ? null : map['initTimeout'] as String,
      metadata: map['metadata'] == null ? null : pulumi.Input.decodeList<DaprMetadata>(map['metadata'], (value) => DaprMetadata.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      secretStoreComponent: map['secretStoreComponent'] == null ? null : map['secretStoreComponent'] as String,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<Secret>(map['secrets'], (value) => Secret.fromMap((value as Map).cast<String, dynamic>())),
      serviceComponentBind: map['serviceComponentBind'] == null ? null : pulumi.Input.decodeList<DaprComponentServiceBinding>(map['serviceComponentBind'], (value) => DaprComponentServiceBinding.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

