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
      'metadata': ?(() {
        final guardedValue = metadata;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          DaprMetadataResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'name': name,
      'scopes': ?scopes,
      'secretStoreComponent': ?secretStoreComponent,
      'secrets': ?(() {
        final guardedValue = secrets;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'serviceComponentBind': ?(() {
        final guardedValue = serviceComponentBind;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          DaprComponentServiceBindingResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetDaprComponentResult.fromMap(Map<String, dynamic> map) {
    return GetDaprComponentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      componentType: (() {
        final guardedValue = map['componentType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ignoreErrors: (() {
        final guardedValue = map['ignoreErrors'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      initTimeout: (() {
        final guardedValue = map['initTimeout'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<DaprMetadataResponse>(
          guardedValue,
          (value) => DaprMetadataResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: map['name'] as String,
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      secretStoreComponent: (() {
        final guardedValue = map['secretStoreComponent'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secrets: (() {
        final guardedValue = map['secrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SecretResponse>(
          guardedValue,
          (value) =>
              SecretResponse.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      serviceComponentBind: (() {
        final guardedValue = map['serviceComponentBind'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<DaprComponentServiceBindingResponse>(
          guardedValue,
          (value) => DaprComponentServiceBindingResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
