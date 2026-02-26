// ignore_for_file: unused_element, unnecessary_cast

class FlowDefinitionOutputConfig {
  /// The Amazon Key Management Service (KMS) key ARN for server-side encryption.
  final String? kmsKeyId;

  /// The Amazon S3 path where the object containing human output will be made available.
  final String s3OutputPath;

  FlowDefinitionOutputConfig({
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    map['s3OutputPath'] = s3OutputPath;
    return map;
  }

  factory FlowDefinitionOutputConfig.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionOutputConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      s3OutputPath: map['s3OutputPath'] as String,
    );
  }
}
