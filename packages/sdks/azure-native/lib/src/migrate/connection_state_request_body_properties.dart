// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// Properties of Connection state request.
class ConnectionStateRequestBodyProperties {
  /// Private endpoint connection state.
  final pulumi.Input<PrivateLinkServiceConnectionState?>? privateLinkServiceConnectionState;

  /// Creates a new [ConnectionStateRequestBodyProperties].
  /// [privateLinkServiceConnectionState] Private endpoint connection state.
  const ConnectionStateRequestBodyProperties({
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory ConnectionStateRequestBodyProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionStateRequestBodyProperties(
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
