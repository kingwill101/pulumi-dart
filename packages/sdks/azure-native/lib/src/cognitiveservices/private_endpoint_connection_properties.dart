// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// Properties of the PrivateEndpointConnectProperties.
class PrivateEndpointConnectionProperties {
  /// The private link resource group ids.
  final List<String>? groupIds;
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionState privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [groupIds] The private link resource group ids.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
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

