// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationS3Configuration {
  /// ARN of the bucket that contains the data source.
  final pulumi.Input<String> bucketArn;
  /// Bucket account owner ID for the S3 bucket.
  final pulumi.Input<String>? bucketOwnerAccountId;
  /// List of S3 prefixes that define the object containing the data sources. For more information, see [Organizing objects using prefixes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html).
  final pulumi.Input<List<String>>? inclusionPrefixes;

  /// Creates a new [AgentDataSourceDataSourceConfigurationS3Configuration].
  /// [bucketArn] ARN of the bucket that contains the data source.
  /// [bucketOwnerAccountId] Bucket account owner ID for the S3 bucket.
  /// [inclusionPrefixes] List of S3 prefixes that define the object containing the data sources. For more information, see [Organizing objects using prefixes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html).
  AgentDataSourceDataSourceConfigurationS3Configuration({
    required this.bucketArn,
    this.bucketOwnerAccountId,
    this.inclusionPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'bucketOwnerAccountId': ?bucketOwnerAccountId,
      'inclusionPrefixes': ?inclusionPrefixes,
    };
  }

  factory AgentDataSourceDataSourceConfigurationS3Configuration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationS3Configuration(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      bucketOwnerAccountId: (() { final guardedValue = map['bucketOwnerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inclusionPrefixes: (() { final guardedValue = map['inclusionPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

