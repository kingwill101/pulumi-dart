// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// The properties of a private endpoint connection.
class PrivateEndpointConnectionProperties {
  /// GroupIds from the private link service resource.
  final pulumi.Input<List<String>?>? groupIds;
  /// Private endpoint connection state
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [groupIds] GroupIds from the private link service resource.
  /// [privateLinkServiceConnectionState] Private endpoint connection state
  const PrivateEndpointConnectionProperties({
    this.groupIds,
    required this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProperties(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())),
    );
  }
}
