// ignore_for_file: unused_element, unnecessary_cast

class TableBucketReplicationRuleDestination {
  /// ARN of destination table bucket to replicate source tables to.
  final String destinationTableBucketArn;

  /// Creates a new [TableBucketReplicationRuleDestination].
  /// [destinationTableBucketArn] ARN of destination table bucket to replicate source tables to.
  TableBucketReplicationRuleDestination({
    required this.destinationTableBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationTableBucketArn': destinationTableBucketArn,
    };
  }

  factory TableBucketReplicationRuleDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableBucketReplicationRuleDestination(
      destinationTableBucketArn: map['destinationTableBucketArn'] as String,
    );
  }
}
