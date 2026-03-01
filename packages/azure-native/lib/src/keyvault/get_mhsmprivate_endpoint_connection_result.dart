// ignore_for_file: unused_element, unnecessary_cast

import 'managed_hsm_sku_response.dart';
import 'managed_service_identity_response.dart';
import 'mhsmprivate_endpoint_response.dart';
import 'mhsmprivate_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMHSMPrivateEndpointConnection.
class GetMHSMPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Modified whenever there is a change in the state of private endpoint connection.
  final String? etag;
  /// The Azure Resource Manager resource ID for the managed HSM Pool.
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  final String? location;
  /// The name of the managed HSM Pool.
  final String name;
  /// Properties of the private endpoint object.
  final MHSMPrivateEndpointResponse? privateEndpoint;
  /// Approval state of the private link connection.
  final MHSMPrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String provisioningState;
  /// SKU details
  final ManagedHsmSkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the key vault resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// The resource type of the managed HSM Pool.
  final String type;

  /// Creates a new [GetMHSMPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Modified whenever there is a change in the state of private endpoint connection.
  /// [id] The Azure Resource Manager resource ID for the managed HSM Pool.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The supported Azure location where the managed HSM Pool should be created.
  /// [name] The name of the managed HSM Pool.
  /// [privateEndpoint] Properties of the private endpoint object.
  /// [privateLinkServiceConnectionState] Approval state of the private link connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  /// [sku] SKU details
  /// [systemData] Metadata pertaining to creation and last modification of the key vault resource.
  /// [tags] Resource tags
  /// [type] The resource type of the managed HSM Pool.
  GetMHSMPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMHSMPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetMHSMPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : MHSMPrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : MHSMPrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      sku: map['sku'] == null ? null : ManagedHsmSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

