// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_match_path_source_packet_header_statement.dart';
import 'network_insights_access_scope_match_path_source_resource_statement.dart';

class NetworkInsightsAccessScopeMatchPathSource {
  /// Packet header statement.
  /// See `packetHeaderStatement` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeMatchPathSourcePacketHeaderStatement?>? packetHeaderStatement;
  /// Resource statement.
  /// Exactly one of `resources` or `resourceTypes` must be specified.
  /// See `resourceStatement` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeMatchPathSourceResourceStatement?>? resourceStatement;

  /// Creates a new [NetworkInsightsAccessScopeMatchPathSource].
  /// [packetHeaderStatement] Packet header statement.
  /// [resourceStatement] Resource statement.
  const NetworkInsightsAccessScopeMatchPathSource({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packetHeaderStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeMatchPathSourcePacketHeaderStatement, Map<String, dynamic>>(packetHeaderStatement, (value) => value.toMap()),
      'resourceStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeMatchPathSourceResourceStatement, Map<String, dynamic>>(resourceStatement, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAccessScopeMatchPathSource.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeMatchPathSource(
      packetHeaderStatement: (() { final guardedValue = map['packetHeaderStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeMatchPathSourcePacketHeaderStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceStatement: (() { final guardedValue = map['resourceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeMatchPathSourceResourceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
