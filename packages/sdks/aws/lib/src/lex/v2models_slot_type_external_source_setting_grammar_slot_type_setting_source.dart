// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource {
  /// KMS key required to decrypt the contents of the grammar, if any.
  final pulumi.Input<String> kmsKeyArn;
  /// Name of the Amazon S3 bucket that contains the grammar source.
  final pulumi.Input<String> s3BucketName;
  /// Path to the grammar in the Amazon S3 bucket.
  final pulumi.Input<String> s3ObjectKey;

  /// Creates a new [V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource].
  /// [kmsKeyArn] KMS key required to decrypt the contents of the grammar, if any.
  /// [s3BucketName] Name of the Amazon S3 bucket that contains the grammar source.
  /// [s3ObjectKey] Path to the grammar in the Amazon S3 bucket.
  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource({
    required this.kmsKeyArn,
    required this.s3BucketName,
    required this.s3ObjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
      's3BucketName': s3BucketName,
      's3ObjectKey': s3ObjectKey,
    };
  }

  factory V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3ObjectKey: pulumi.Input.fromValue(map['s3ObjectKey'] as String),
    );
  }
}

