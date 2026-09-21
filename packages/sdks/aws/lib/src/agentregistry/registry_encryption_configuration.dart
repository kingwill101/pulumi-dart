// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryEncryptionConfiguration {
  /// ARN of the customer-managed AWS KMS key used to encrypt the registry's content.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [RegistryEncryptionConfiguration].
  /// [kmsKeyArn] ARN of the customer-managed AWS KMS key used to encrypt the registry's content.
  const RegistryEncryptionConfiguration({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory RegistryEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return RegistryEncryptionConfiguration(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
