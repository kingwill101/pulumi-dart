// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableEncryptionConfiguration {
  /// The ARN of a KMS Key to be used with `aws:kms` `sse_algorithm`
  final pulumi.Input<String> kmsKeyArn;

  /// One of `aws:kms` or `AES256`
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [TableEncryptionConfiguration].
  /// [kmsKeyArn] The ARN of a KMS Key to be used with `aws:kms` `sse_algorithm`
  /// [sseAlgorithm] One of `aws:kms` or `AES256`
  TableEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory TableEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return TableEncryptionConfiguration(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      sseAlgorithm: pulumi.Input.fromValue(map['sseAlgorithm'] as String),
    );
  }
}
