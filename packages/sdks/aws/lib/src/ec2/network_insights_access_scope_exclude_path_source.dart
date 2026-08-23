// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_exclude_path_source_packet_header_statement.dart';
import 'network_insights_access_scope_exclude_path_source_resource_statement.dart';

class NetworkInsightsAccessScopeExcludePathSource {
  /// Packet header statement.
  /// See `packetHeaderStatement` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeExcludePathSourcePacketHeaderStatement>? packetHeaderStatement;
  /// Resource statement.
  /// Exactly one of `resources` or `resourceTypes` must be specified.
  /// See `resourceStatement` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeExcludePathSourceResourceStatement>? resourceStatement;

  /// Creates a new [NetworkInsightsAccessScopeExcludePathSource].
  /// [packetHeaderStatement] Packet header statement.
  /// [resourceStatement] Resource statement.
  const NetworkInsightsAccessScopeExcludePathSource({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packetHeaderStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeExcludePathSourcePacketHeaderStatement, Map<String, dynamic>>(packetHeaderStatement, (value) => value.toMap()),
      'resourceStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeExcludePathSourceResourceStatement, Map<String, dynamic>>(resourceStatement, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAccessScopeExcludePathSource.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeExcludePathSource(
      packetHeaderStatement: (() { final guardedValue = map['packetHeaderStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeExcludePathSourcePacketHeaderStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceStatement: (() { final guardedValue = map['resourceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeExcludePathSourceResourceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
