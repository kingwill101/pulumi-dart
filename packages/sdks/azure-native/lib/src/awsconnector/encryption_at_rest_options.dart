// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EncryptionAtRestOptions
class EncryptionAtRestOptions {
  /// <p>True to enable encryption at rest.</p>
  final pulumi.Input<bool>? enabled;
  /// <p>The KMS key ID. Takes the form <code>1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a</code>.</p>
  final pulumi.Input<String>? kmsKeyId;

  /// Creates a new [EncryptionAtRestOptions].
  /// [enabled] <p>True to enable encryption at rest.</p>
  /// [kmsKeyId] <p>The KMS key ID. Takes the form <code>1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a</code>.</p>
  EncryptionAtRestOptions({
    this.enabled,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory EncryptionAtRestOptions.fromMap(Map<String, dynamic> map) {
    return EncryptionAtRestOptions(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
    );
  }
}

