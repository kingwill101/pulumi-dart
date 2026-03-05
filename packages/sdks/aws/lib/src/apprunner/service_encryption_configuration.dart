// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceEncryptionConfiguration {
  /// ARN of the KMS key used for encryption.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [ServiceEncryptionConfiguration].
  /// [kmsKey] ARN of the KMS key used for encryption.
  ServiceEncryptionConfiguration({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory ServiceEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceEncryptionConfiguration(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}

