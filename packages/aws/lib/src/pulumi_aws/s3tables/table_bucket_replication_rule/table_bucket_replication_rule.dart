// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_bucket_replication_rule_destination/table_bucket_replication_rule_destination.dart';

class TableBucketReplicationRule {
  /// Replication destination. See Destination below for more details.
  final List<TableBucketReplicationRuleDestination> destinations;

  TableBucketReplicationRule({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = pulumi.Input.encodeList<
        TableBucketReplicationRuleDestination,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    return map;
  }

  factory TableBucketReplicationRule.fromMap(Map<String, dynamic> map) {
    return TableBucketReplicationRule(
      destinations:
          pulumi.Input.decodeList<TableBucketReplicationRuleDestination>(
              map['destinations'],
              (value) => TableBucketReplicationRuleDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
