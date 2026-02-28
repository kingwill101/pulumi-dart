// ignore_for_file: unused_element, unnecessary_cast

class ModelCardSecurityConfig {
  /// KMS key ARN.
  final String kmsKeyId;

  /// Creates a new [ModelCardSecurityConfig].
  /// [kmsKeyId] KMS key ARN.
  ModelCardSecurityConfig({
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyId'] = kmsKeyId;
    return map;
  }

  factory ModelCardSecurityConfig.fromMap(Map<String, dynamic> map) {
    return ModelCardSecurityConfig(
      kmsKeyId: map['kmsKeyId'] as String,
    );
  }
}
