// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_exclude_path_destination_packet_header_statement.dart';
import 'network_insights_access_scope_exclude_path_destination_resource_statement.dart';

class NetworkInsightsAccessScopeExcludePathDestination {
  /// Packet header statement.
  /// See `packetHeaderStatement` below for details.
  final pulumi.Input<NetworkInsightsAccessScopeExcludePathDestinationPacketHeaderStatement>? packetHeaderStatement;
  final pulumi.Input<NetworkInsightsAccessScopeExcludePathDestinationResourceStatement>? resourceStatement;

  /// Creates a new [NetworkInsightsAccessScopeExcludePathDestination].
  /// [packetHeaderStatement] Packet header statement.
  /// [resourceStatement] Optional.
  const NetworkInsightsAccessScopeExcludePathDestination({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packetHeaderStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeExcludePathDestinationPacketHeaderStatement, Map<String, dynamic>>(packetHeaderStatement, (value) => value.toMap()),
      'resourceStatement': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsAccessScopeExcludePathDestinationResourceStatement, Map<String, dynamic>>(resourceStatement, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAccessScopeExcludePathDestination.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeExcludePathDestination(
      packetHeaderStatement: (() { final guardedValue = map['packetHeaderStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeExcludePathDestinationPacketHeaderStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceStatement: (() { final guardedValue = map['resourceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsAccessScopeExcludePathDestinationResourceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
