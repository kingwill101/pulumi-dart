// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_properties_private_link_service_connection_state.dart';

/// The properties of a private endpoint connection.
class ConnectionProperties {
  /// The list of group ids for the private endpoint connection.
  final pulumi.Input<List<String>>? groupIds;
  /// The connection state.
  final pulumi.Input<ConnectionPropertiesPrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;

  /// Creates a new [ConnectionProperties].
  /// [groupIds] The list of group ids for the private endpoint connection.
  /// [privateLinkServiceConnectionState] The connection state.
  ConnectionProperties({
    this.groupIds,
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionPropertiesPrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory ConnectionProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionProperties(
      groupIds: map['groupIds'] == null ? null : ((map['groupIds']! as List).cast<String>()).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (ConnectionPropertiesPrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

