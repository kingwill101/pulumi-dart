// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_plane_proxy_properties_response.dart';
import 'encryption_properties_response.dart';
import 'private_endpoint_connection_reference_response.dart';
import 'resource_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConfigurationStore.
class GetConfigurationStoreResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of configuration store.
  final String creationDate;
  /// Property specifying the configuration of data plane proxy for Azure Resource Manager (ARM).
  final DataPlaneProxyPropertiesResponse? dataPlaneProxy;
  /// Disables all authentication methods other than AAD authentication.
  final bool? disableLocalAuth;
  /// Property specifying whether protection against purge is enabled for this configuration store.
  final bool? enablePurgeProtection;
  /// The encryption settings of the configuration store.
  final EncryptionPropertiesResponse? encryption;
  /// The DNS endpoint where the configuration store API will be available.
  final String endpoint;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The managed identity information, if configured.
  final ResourceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The list of private endpoint connections that are set up for this resource.
  final List<PrivateEndpointConnectionReferenceResponse> privateEndpointConnections;
  /// The provisioning state of the configuration store.
  final String provisioningState;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final String? publicNetworkAccess;
  /// The sku of the configuration store.
  final SkuResponse sku;
  /// The amount of time in days that the configuration store will be retained when it is soft deleted.
  final int? softDeleteRetentionInDays;
  /// Resource system metadata.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConfigurationStoreResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of configuration store.
  /// [dataPlaneProxy] Property specifying the configuration of data plane proxy for Azure Resource Manager (ARM).
  /// [disableLocalAuth] Disables all authentication methods other than AAD authentication.
  /// [enablePurgeProtection] Property specifying whether protection against purge is enabled for this configuration store.
  /// [encryption] The encryption settings of the configuration store.
  /// [endpoint] The DNS endpoint where the configuration store API will be available.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The managed identity information, if configured.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] The list of private endpoint connections that are set up for this resource.
  /// [provisioningState] The provisioning state of the configuration store.
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  /// [sku] The sku of the configuration store.
  /// [softDeleteRetentionInDays] The amount of time in days that the configuration store will be retained when it is soft deleted.
  /// [systemData] Resource system metadata.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetConfigurationStoreResult({
    required this.azureApiVersion,
    required this.creationDate,
    this.dataPlaneProxy,
    this.disableLocalAuth,
    this.enablePurgeProtection,
    this.encryption,
    required this.endpoint,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.sku,
    this.softDeleteRetentionInDays,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'dataPlaneProxy': ?dataPlaneProxy?.toMap(),
      'disableLocalAuth': ?disableLocalAuth,
      'enablePurgeProtection': ?enablePurgeProtection,
      'encryption': ?encryption?.toMap(),
      'endpoint': endpoint,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionReferenceResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': sku.toMap(),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetConfigurationStoreResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      dataPlaneProxy: (() { final guardedValue = map['dataPlaneProxy']; if (guardedValue == null) return null; return DataPlaneProxyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePurgeProtection: (() { final guardedValue = map['enablePurgeProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionReferenceResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      softDeleteRetentionInDays: (() { final guardedValue = map['softDeleteRetentionInDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

