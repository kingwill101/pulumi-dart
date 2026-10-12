// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationApplicationEncryptionConfiguration {
  /// ARN of the KMS key to use for encryption. Required when `keyType` is set to `CUSTOMER_MANAGED_KEY`. The KMS key must be in the same Region as the application.
  final pulumi.Input<String?>? keyId;
  /// Type of encryption key to use. Valid values: `CUSTOMER_MANAGED_KEY`, `AWS_OWNED_KEY`.
  final pulumi.Input<String> keyType;

  /// Creates a new [ApplicationApplicationConfigurationApplicationEncryptionConfiguration].
  /// [keyId] ARN of the KMS key to use for encryption. Required when `keyType` is set to `CUSTOMER_MANAGED_KEY`. The KMS key must be in the same Region as the application.
  /// [keyType] Type of encryption key to use. Valid values: `CUSTOMER_MANAGED_KEY`, `AWS_OWNED_KEY`.
  const ApplicationApplicationConfigurationApplicationEncryptionConfiguration({
    this.keyId,
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'keyType': keyType,
    };
  }

  factory ApplicationApplicationConfigurationApplicationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationEncryptionConfiguration(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
    );
  }
}
