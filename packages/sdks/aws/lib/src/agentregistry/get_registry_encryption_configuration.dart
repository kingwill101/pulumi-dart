// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryEncryptionConfiguration {
  /// ARN of the customer-managed AWS KMS key used to encrypt the registry's content.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [GetRegistryEncryptionConfiguration].
  /// [kmsKeyArn] ARN of the customer-managed AWS KMS key used to encrypt the registry's content.
  const GetRegistryEncryptionConfiguration({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory GetRegistryEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRegistryEncryptionConfiguration(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
