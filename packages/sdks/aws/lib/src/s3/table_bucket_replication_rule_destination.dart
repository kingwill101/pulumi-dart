// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableBucketReplicationRuleDestination {
  /// ARN of destination table bucket to replicate source tables to.
  final pulumi.Input<String> destinationTableBucketArn;

  /// Creates a new [TableBucketReplicationRuleDestination].
  /// [destinationTableBucketArn] ARN of destination table bucket to replicate source tables to.
  const TableBucketReplicationRuleDestination({
    required this.destinationTableBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationTableBucketArn': destinationTableBucketArn,
    };
  }

  factory TableBucketReplicationRuleDestination.fromMap(Map<String, dynamic> map) {
    return TableBucketReplicationRuleDestination(
      destinationTableBucketArn: pulumi.Input.fromValue(map['destinationTableBucketArn'] as String),
    );
  }
}
