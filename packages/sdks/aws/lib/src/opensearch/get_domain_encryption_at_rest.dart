// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainEncryptionAtRest {
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  /// KMS key id used to encrypt data at rest.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [GetDomainEncryptionAtRest].
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [kmsKeyId] KMS key id used to encrypt data at rest.
  GetDomainEncryptionAtRest({
    required this.enabled,
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'kmsKeyId': kmsKeyId,
    };
  }

  factory GetDomainEncryptionAtRest.fromMap(Map<String, dynamic> map) {
    return GetDomainEncryptionAtRest(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}

