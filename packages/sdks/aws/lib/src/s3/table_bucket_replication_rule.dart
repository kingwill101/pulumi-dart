// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_replication_rule_destination.dart';

class TableBucketReplicationRule {
  /// Replication destination. See Destination below for more details.
  final pulumi.Input<List<TableBucketReplicationRuleDestination>> destinations;

  /// Creates a new [TableBucketReplicationRule].
  /// [destinations] Replication destination. See Destination below for more details.
  const TableBucketReplicationRule({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<TableBucketReplicationRuleDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TableBucketReplicationRuleDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TableBucketReplicationRule.fromMap(Map<String, dynamic> map) {
    return TableBucketReplicationRule(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<TableBucketReplicationRuleDestination>(map['destinations']!, (value) => TableBucketReplicationRuleDestination.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
