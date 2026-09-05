// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_match_path_destination_packet_header_statement.dart';
import 'network_insights_access_scope_match_path_destination_resource_statement.dart';

class NetworkInsightsAccessScopeMatchPathDestination {
  /// Packet header statement.
  /// See `packetHeaderStatement` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement?>? packetHeaderStatement;
  final pulumi.Input<NetworkInsightsAccessScopeMatchPathDestinationResourceStatement?>? resourceStatement;

  /// Creates a new [NetworkInsightsAccessScopeMatchPathDestination].
  /// [packetHeaderStatement] Packet header statement.
  /// [resourceStatement] Optional.
  const NetworkInsightsAccessScopeMatchPathDestination({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packetHeaderStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement, Map<String, dynamic>>(packetHeaderStatement, (value) => value.toMap()),
      'resourceStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeMatchPathDestinationResourceStatement, Map<String, dynamic>>(resourceStatement, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAccessScopeMatchPathDestination.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeMatchPathDestination(
      packetHeaderStatement: (() { final guardedValue = map['packetHeaderStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceStatement: (() { final guardedValue = map['resourceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeMatchPathDestinationResourceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
