// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableBucketEncryptionConfiguration {
  /// ARN of a KMS Key to be used with `aws:kms` `sseAlgorithm`
  final pulumi.Input<String> kmsKeyArn;
  /// One of `aws:kms` or `AES256`
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [TableBucketEncryptionConfiguration].
  /// [kmsKeyArn] ARN of a KMS Key to be used with `aws:kms` `sseAlgorithm`
  /// [sseAlgorithm] One of `aws:kms` or `AES256`
  const TableBucketEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory TableBucketEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return TableBucketEncryptionConfiguration(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      sseAlgorithm: pulumi.Input.fromValue(map['sseAlgorithm'] as String),
    );
  }
}
