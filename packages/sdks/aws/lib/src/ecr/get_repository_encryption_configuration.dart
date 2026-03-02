// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryEncryptionConfiguration {
  /// Encryption type to use for the repository, either `AES256` or `KMS`.
  final pulumi.Input<String> encryptionType;
  /// If `encryption_type` is `KMS`, the ARN of the KMS key used.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [GetRepositoryEncryptionConfiguration].
  /// [encryptionType] Encryption type to use for the repository, either `AES256` or `KMS`.
  /// [kmsKey] If `encryption_type` is `KMS`, the ARN of the KMS key used.
  GetRepositoryEncryptionConfiguration({
    required this.encryptionType,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'kmsKey': kmsKey,
    };
  }

  factory GetRepositoryEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRepositoryEncryptionConfiguration(
      encryptionType: (map['encryptionType'] as String).input(),
      kmsKey: (map['kmsKey'] as String).input(),
    );
  }
}

