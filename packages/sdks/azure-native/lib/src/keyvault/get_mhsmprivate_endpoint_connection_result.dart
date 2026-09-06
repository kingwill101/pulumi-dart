// ignore_for_file: unused_element, unnecessary_cast

import 'managed_hsm_sku_response.dart';
import 'managed_service_identity_response.dart';
import 'mhsmprivate_endpoint_response.dart';
import 'mhsmprivate_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMHSMPrivateEndpointConnection.
class GetMHSMPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Modified whenever there is a change in the state of private endpoint connection.
  final String? etag;
  /// The Azure Resource Manager resource ID for the managed HSM Pool.
  final String? id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  final String? location;
  /// The name of the managed HSM Pool.
  final String? name;
  /// Properties of the private endpoint object.
  final MHSMPrivateEndpointResponse? privateEndpoint;
  /// Approval state of the private link connection.
  final MHSMPrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String? provisioningState;
  /// SKU details
  final ManagedHsmSkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the key vault resource.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// The resource type of the managed HSM Pool.
  final String? type;

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
  const GetMHSMPrivateEndpointConnectionResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState?.toMap(),
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetMHSMPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetMHSMPrivateEndpointConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return MHSMPrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return MHSMPrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ManagedHsmSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
