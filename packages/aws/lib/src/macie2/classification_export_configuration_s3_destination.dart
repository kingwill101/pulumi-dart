// ignore_for_file: unused_element, unnecessary_cast

class ClassificationExportConfigurationS3Destination {
  /// The Amazon S3 bucket name in which Amazon Macie exports the data classification results.
  final String bucketName;

  /// The object key for the bucket in which Amazon Macie exports the data classification results.
  final String? keyPrefix;

  /// Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  ///
  /// Additional information can be found in the [Storing and retaining sensitive data discovery results with Amazon Macie for AWS Macie documentation](https://docs.aws.amazon.com/macie/latest/user/discovery-results-repository-s3.html).
  final String kmsKeyArn;

  /// Creates a new [ClassificationExportConfigurationS3Destination].
  /// [bucketName] The Amazon S3 bucket name in which Amazon Macie exports the data classification results.
  /// [keyPrefix] The object key for the bucket in which Amazon Macie exports the data classification results.
  /// [kmsKeyArn] Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  ClassificationExportConfigurationS3Destination({
    required this.bucketName,
    this.keyPrefix,
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final keyPrefixValue = keyPrefix;
    if (keyPrefixValue != null) {
      map['keyPrefix'] = keyPrefixValue;
    }
    map['kmsKeyArn'] = kmsKeyArn;
    return map;
  }

  factory ClassificationExportConfigurationS3Destination.fromMap(
      Map<String, dynamic> map) {
    return ClassificationExportConfigurationS3Destination(
      bucketName: map['bucketName'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}
