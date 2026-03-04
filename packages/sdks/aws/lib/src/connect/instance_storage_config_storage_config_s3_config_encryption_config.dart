// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig {
  /// The type of encryption. Valid Values: `KMS`.
  final pulumi.Input<String> encryptionType;

  /// The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  final pulumi.Input<String> keyId;

  /// Creates a new [InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig].
  /// [encryptionType] The type of encryption. Valid Values: `KMS`.
  /// [keyId] The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'encryptionType': encryptionType, 'keyId': keyId};
  }

  factory InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig(
      encryptionType: pulumi.Input.fromValue(map['encryptionType'] as String),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}
