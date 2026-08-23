// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessCollectionEncryptionConfig {
  /// Whether to use an AWS owned key for collection encryption.
  final pulumi.Input<bool> awsOwnedKey;
  /// ARN of the AWS KMS key to use for collection encryption.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [ServerlessCollectionEncryptionConfig].
  /// [awsOwnedKey] Whether to use an AWS owned key for collection encryption.
  /// [kmsKeyArn] ARN of the AWS KMS key to use for collection encryption.
  const ServerlessCollectionEncryptionConfig({
    required this.awsOwnedKey,
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsOwnedKey': awsOwnedKey,
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory ServerlessCollectionEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return ServerlessCollectionEncryptionConfig(
      awsOwnedKey: pulumi.Input.fromValue(map['awsOwnedKey'] as bool),
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
