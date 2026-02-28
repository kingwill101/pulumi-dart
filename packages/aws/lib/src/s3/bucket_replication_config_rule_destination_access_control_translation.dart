// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleDestinationAccessControlTranslation {
  /// Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the Amazon S3 API Reference. Valid values: `Destination`.
  final String owner;

  /// Creates a new [BucketReplicationConfigRuleDestinationAccessControlTranslation].
  /// [owner] Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the Amazon S3 API Reference. Valid values: `Destination`.
  BucketReplicationConfigRuleDestinationAccessControlTranslation({
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['owner'] = owner;
    return map;
  }

  factory BucketReplicationConfigRuleDestinationAccessControlTranslation.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationAccessControlTranslation(
      owner: map['owner'] as String,
    );
  }
}
