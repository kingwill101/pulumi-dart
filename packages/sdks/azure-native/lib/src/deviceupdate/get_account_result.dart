// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'location_response.dart';
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// CMK encryption at rest properties
  final EncryptionResponse? encryption;
  /// API host name.
  final String hostName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The type of identity used for the resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Device Update account primary and failover location details
  final List<LocationResponse> locations;
  /// The name of the resource
  final String name;
  /// List of private endpoint connections associated with the account.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state.
  final String provisioningState;
  /// Whether or not public network access is allowed for the account.
  final String? publicNetworkAccess;
  /// Device Update Sku
  final String? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryption] CMK encryption at rest properties
  /// [hostName] API host name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The type of identity used for the resource.
  /// [location] The geo-location where the resource lives
  /// [locations] Device Update account primary and failover location details
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections associated with the account.
  /// [provisioningState] Provisioning state.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the account.
  /// [sku] Device Update Sku
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAccountResult({
    required this.azureApiVersion,
    this.encryption,
    required this.hostName,
    required this.id,
    this.identity,
    required this.location,
    required this.locations,
    required this.name,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'hostName': hostName,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'locations': pulumi.Input.encodeList<LocationResponse, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'name': name,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      locations: pulumi.Input.decodeList<LocationResponse>(map['locations'], (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

