// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigurationRuleDestinationAccessControlTranslation {
  /// Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html) in the Amazon S3 API Reference. The only valid value is `Destination`.
  final String owner;

  BucketReplicationConfigurationRuleDestinationAccessControlTranslation({
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['owner'] = owner;
    return map;
  }

  factory BucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleDestinationAccessControlTranslation(
      owner: map['owner'] as String,
    );
  }
}
