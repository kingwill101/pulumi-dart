// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleDestinationAccessControlTranslation {
  /// Replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the Amazon S3 API Reference. Valid values: `Destination`.
  final pulumi.Input<String> owner;

  /// Creates a new [BucketReplicationConfigRuleDestinationAccessControlTranslation].
  /// [owner] Replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the Amazon S3 API Reference. Valid values: `Destination`.
  const BucketReplicationConfigRuleDestinationAccessControlTranslation({
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner': owner,
    };
  }

  factory BucketReplicationConfigRuleDestinationAccessControlTranslation.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationAccessControlTranslation(
      owner: pulumi.Input.fromValue(map['owner'] as String),
    );
  }
}
