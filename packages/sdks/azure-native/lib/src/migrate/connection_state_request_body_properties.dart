// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// Properties of Connection state request.
class ConnectionStateRequestBodyProperties {
  /// Private endpoint connection state.
  final PrivateLinkServiceConnectionState? privateLinkServiceConnectionState;

  /// Creates a new [ConnectionStateRequestBodyProperties].
  /// [privateLinkServiceConnectionState] Private endpoint connection state.
  ConnectionStateRequestBodyProperties({
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
    };
  }

  factory ConnectionStateRequestBodyProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionStateRequestBodyProperties(
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

