// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_replication_rule_destination/table_replication_rule_destination.dart';

class TableReplicationRule {
  /// Replication destination. See Destination below for more details.
  final List<TableReplicationRuleDestination> destinations;

  TableReplicationRule({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = pulumi.Input.encodeList<
        TableReplicationRuleDestination,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    return map;
  }

  factory TableReplicationRule.fromMap(Map<String, dynamic> map) {
    return TableReplicationRule(
      destinations: pulumi.Input.decodeList<TableReplicationRuleDestination>(
          map['destinations'],
          (value) => TableReplicationRuleDestination.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
