// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_replication_rule_destination.dart';

class TableReplicationRule {
  /// Replication destination. See Destination below for more details.
  final pulumi.Input<List<TableReplicationRuleDestination>> destinations;

  /// Creates a new [TableReplicationRule].
  /// [destinations] Replication destination. See Destination below for more details.
  const TableReplicationRule({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<TableReplicationRuleDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TableReplicationRuleDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TableReplicationRule.fromMap(Map<String, dynamic> map) {
    return TableReplicationRule(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<TableReplicationRuleDestination>(map['destinations']!, (value) => TableReplicationRuleDestination.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

