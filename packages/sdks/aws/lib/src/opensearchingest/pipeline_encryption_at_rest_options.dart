// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineEncryptionAtRestOptions {
  /// The ARN of the KMS key used to encrypt data-at-rest in OpenSearch Ingestion. By default, data is encrypted using an AWS owned key.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [PipelineEncryptionAtRestOptions].
  /// [kmsKeyArn] The ARN of the KMS key used to encrypt data-at-rest in OpenSearch Ingestion. By default, data is encrypted using an AWS owned key.
  const PipelineEncryptionAtRestOptions({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory PipelineEncryptionAtRestOptions.fromMap(Map<String, dynamic> map) {
    return PipelineEncryptionAtRestOptions(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
