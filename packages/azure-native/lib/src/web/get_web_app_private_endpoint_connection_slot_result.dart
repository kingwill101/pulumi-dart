// ignore_for_file: unused_element, unnecessary_cast

import 'arm_id_wrapper_response.dart';
import 'private_link_connection_state_response.dart';

/// Result data returned by getWebAppPrivateEndpointConnectionSlot.
class GetWebAppPrivateEndpointConnectionSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Private IPAddresses mapped to the remote private endpoint
  final List<String>? ipAddresses;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// PrivateEndpoint of a remote private endpoint connection
  final ArmIdWrapperResponse? privateEndpoint;
  /// The state of a private link connection
  final PrivateLinkConnectionStateResponse? privateLinkServiceConnectionState;
  final String provisioningState;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppPrivateEndpointConnectionSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [ipAddresses] Private IPAddresses mapped to the remote private endpoint
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [privateEndpoint] PrivateEndpoint of a remote private endpoint connection
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [provisioningState] Required.
  /// [type] Resource type.
  GetWebAppPrivateEndpointConnectionSlotResult({
    required this.azureApiVersion,
    required this.id,
    this.ipAddresses,
    this.kind,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'ipAddresses': ?ipAddresses,
      'kind': ?kind,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetWebAppPrivateEndpointConnectionSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppPrivateEndpointConnectionSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : ArmIdWrapperResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

