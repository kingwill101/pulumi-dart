// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig {
  /// The type of encryption. Valid Values: `KMS`.
  final pulumi.Input<String> encryptionType;
  /// The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  final pulumi.Input<String> keyId;

  /// Creates a new [GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig].
  /// [encryptionType] The type of encryption. Valid Values: `KMS`.
  /// [keyId] The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'keyId': keyId,
    };
  }

  factory GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig(
      encryptionType: (map['encryptionType'] as String).input(),
      keyId: (map['keyId'] as String).input(),
    );
  }
}

