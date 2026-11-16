// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LibraryEncryptionConfiguration {
  /// Map of key-value pairs to use as the KMS encryption context.
  final pulumi.Input<Map<String, String>?>? kmsEncryptionContext;
  /// Identifier of the KMS key used to encrypt the library.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [LibraryEncryptionConfiguration].
  /// [kmsEncryptionContext] Map of key-value pairs to use as the KMS encryption context.
  /// [kmsKeyId] Identifier of the KMS key used to encrypt the library.
  const LibraryEncryptionConfiguration({
    this.kmsEncryptionContext,
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'kmsKeyId': kmsKeyId,
    };
  }

  factory LibraryEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return LibraryEncryptionConfiguration(
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}
