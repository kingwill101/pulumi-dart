// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// The properties of a private endpoint connection
class PrivateEndpointConnectionProperties {
  /// GroupIds from the private link service resource.
  final List<String>? groupIds;
  /// Private endpoint connection state
  final PrivateLinkServiceConnectionState privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [groupIds] GroupIds from the private link service resource.
  /// [privateLinkServiceConnectionState] Private endpoint connection state
  PrivateEndpointConnectionProperties({
    this.groupIds,
    required this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProperties(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

