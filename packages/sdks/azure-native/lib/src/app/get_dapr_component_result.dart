// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_service_binding_response.dart';
import 'dapr_metadata_response.dart';
import 'secret_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDaprComponent.
class GetDaprComponentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Component type
  final String? componentType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Boolean describing if the component errors are ignores
  final bool? ignoreErrors;
  /// Initialization timeout
  final String? initTimeout;
  /// Component metadata
  final List<DaprMetadataResponse>? metadata;
  /// The name of the resource
  final String name;
  /// Names of container apps that can use this Dapr component
  final List<String>? scopes;
  /// Name of a Dapr component to retrieve component secrets from
  final String? secretStoreComponent;
  /// Collection of secrets used by a Dapr component
  final List<SecretResponse>? secrets;
  /// List of container app services that are bound to the Dapr component
  final List<DaprComponentServiceBindingResponse>? serviceComponentBind;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Component version
  final String? version;

  /// Creates a new [GetDaprComponentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [componentType] Component type
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ignoreErrors] Boolean describing if the component errors are ignores
  /// [initTimeout] Initialization timeout
  /// [metadata] Component metadata
  /// [name] The name of the resource
  /// [scopes] Names of container apps that can use this Dapr component
  /// [secretStoreComponent] Name of a Dapr component to retrieve component secrets from
  /// [secrets] Collection of secrets used by a Dapr component
  /// [serviceComponentBind] List of container app services that are bound to the Dapr component
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Component version
  GetDaprComponentResult({
    required this.azureApiVersion,
    this.componentType,
    required this.id,
    this.ignoreErrors,
    this.initTimeout,
    this.metadata,
    required this.name,
    this.scopes,
    this.secretStoreComponent,
    this.secrets,
    this.serviceComponentBind,
    required this.systemData,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'componentType': ?componentType,
      'id': id,
      'ignoreErrors': ?ignoreErrors,
      'initTimeout': ?initTimeout,
      'metadata': ?metadata == null ? null : pulumi.Input.encodeList<DaprMetadataResponse, Map<String, dynamic>>(metadata!, (value) => value.toMap()),
      'name': name,
      'scopes': ?scopes,
      'secretStoreComponent': ?secretStoreComponent,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'serviceComponentBind': ?serviceComponentBind == null ? null : pulumi.Input.encodeList<DaprComponentServiceBindingResponse, Map<String, dynamic>>(serviceComponentBind!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetDaprComponentResult.fromMap(Map<String, dynamic> map) {
    return GetDaprComponentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      componentType: map['componentType'] == null ? null : map['componentType'] as String,
      id: map['id'] as String,
      ignoreErrors: map['ignoreErrors'] == null ? null : map['ignoreErrors'] as bool,
      initTimeout: map['initTimeout'] == null ? null : map['initTimeout'] as String,
      metadata: map['metadata'] == null ? null : pulumi.Input.decodeList<DaprMetadataResponse>(map['metadata'], (value) => DaprMetadataResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      secretStoreComponent: map['secretStoreComponent'] == null ? null : map['secretStoreComponent'] as String,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<SecretResponse>(map['secrets'], (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceComponentBind: map['serviceComponentBind'] == null ? null : pulumi.Input.decodeList<DaprComponentServiceBindingResponse>(map['serviceComponentBind'], (value) => DaprComponentServiceBindingResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

