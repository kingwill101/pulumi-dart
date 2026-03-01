// ignore_for_file: unused_element, unnecessary_cast

class TableReplicationRuleDestination {
  /// ARN of destination table bucket to replicate source tables to.
  final String destinationTableBucketArn;

  /// Creates a new [TableReplicationRuleDestination].
  /// [destinationTableBucketArn] ARN of destination table bucket to replicate source tables to.
  TableReplicationRuleDestination({required this.destinationTableBucketArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationTableBucketArn': destinationTableBucketArn,
    };
  }

  factory TableReplicationRuleDestination.fromMap(Map<String, dynamic> map) {
    return TableReplicationRuleDestination(
      destinationTableBucketArn: map['destinationTableBucketArn'] as String,
    );
  }
}
