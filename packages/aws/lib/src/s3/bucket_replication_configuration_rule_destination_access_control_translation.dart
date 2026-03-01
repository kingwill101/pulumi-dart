// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigurationRuleDestinationAccessControlTranslation {
  /// Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html) in the Amazon S3 API Reference. The only valid value is `Destination`.
  final String owner;

  /// Creates a new [BucketReplicationConfigurationRuleDestinationAccessControlTranslation].
  /// [owner] Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html) in the Amazon S3 API Reference. The only valid value is `Destination`.
  BucketReplicationConfigurationRuleDestinationAccessControlTranslation({
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'owner': owner};
  }

  factory BucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketReplicationConfigurationRuleDestinationAccessControlTranslation(
      owner: map['owner'] as String,
    );
  }
}
