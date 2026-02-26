// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceDataSourceConfigurationS3Configuration {
  /// ARN of the bucket that contains the data source.
  final String bucketArn;

  /// Bucket account owner ID for the S3 bucket.
  final String? bucketOwnerAccountId;

  /// List of S3 prefixes that define the object containing the data sources. For more information, see [Organizing objects using prefixes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html).
  final List<String>? inclusionPrefixes;

  AgentDataSourceDataSourceConfigurationS3Configuration({
    required this.bucketArn,
    this.bucketOwnerAccountId,
    this.inclusionPrefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketArn'] = bucketArn;
    final bucketOwnerAccountIdValue = bucketOwnerAccountId;
    if (bucketOwnerAccountIdValue != null) {
      map['bucketOwnerAccountId'] = bucketOwnerAccountIdValue;
    }
    final inclusionPrefixesValue = inclusionPrefixes;
    if (inclusionPrefixesValue != null) {
      map['inclusionPrefixes'] = inclusionPrefixesValue;
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationS3Configuration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationS3Configuration(
      bucketArn: map['bucketArn'] as String,
      bucketOwnerAccountId: map['bucketOwnerAccountId'] == null
          ? null
          : map['bucketOwnerAccountId'] as String,
      inclusionPrefixes: map['inclusionPrefixes'] == null
          ? null
          : (map['inclusionPrefixes'] as List).cast<String>(),
    );
  }
}
