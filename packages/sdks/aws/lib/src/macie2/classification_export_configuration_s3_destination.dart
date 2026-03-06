// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationExportConfigurationS3Destination {
  /// The Amazon S3 bucket name in which Amazon Macie exports the data classification results.
  final pulumi.Input<String> bucketName;
  /// The object key for the bucket in which Amazon Macie exports the data classification results.
  final pulumi.Input<String>? keyPrefix;
  /// Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  ///
  /// Additional information can be found in the [Storing and retaining sensitive data discovery results with Amazon Macie for AWS Macie documentation](https://docs.aws.amazon.com/macie/latest/user/discovery-results-repository-s3.html).
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [ClassificationExportConfigurationS3Destination].
  /// [bucketName] The Amazon S3 bucket name in which Amazon Macie exports the data classification results.
  /// [keyPrefix] The object key for the bucket in which Amazon Macie exports the data classification results.
  /// [kmsKeyArn] Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  const ClassificationExportConfigurationS3Destination({
    required this.bucketName,
    this.keyPrefix,
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'keyPrefix': ?keyPrefix,
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory ClassificationExportConfigurationS3Destination.fromMap(Map<String, dynamic> map) {
    return ClassificationExportConfigurationS3Destination(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      keyPrefix: (() { final guardedValue = map['keyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}

