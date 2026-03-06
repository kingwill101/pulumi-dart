// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelCardSecurityConfig {
  /// KMS key ARN.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [ModelCardSecurityConfig].
  /// [kmsKeyId] KMS key ARN.
  const ModelCardSecurityConfig({
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': kmsKeyId,
    };
  }

  factory ModelCardSecurityConfig.fromMap(Map<String, dynamic> map) {
    return ModelCardSecurityConfig(
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}

