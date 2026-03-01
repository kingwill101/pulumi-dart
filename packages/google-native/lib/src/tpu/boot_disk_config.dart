// ignore_for_file: unused_element, unnecessary_cast

import 'customer_encryption_key.dart';

/// Boot disk configurations.
class BootDiskConfig {
  /// Optional. Customer encryption key for boot disk.
  final CustomerEncryptionKey? customerEncryptionKey;

  /// Optional. Whether the boot disk will be created with confidential compute mode.
  final bool? enableConfidentialCompute;

  /// Creates a new [BootDiskConfig].
  /// [customerEncryptionKey] Optional. Customer encryption key for boot disk.
  /// [enableConfidentialCompute] Optional. Whether the boot disk will be created with confidential compute mode.
  BootDiskConfig({this.customerEncryptionKey, this.enableConfidentialCompute});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEncryptionKey': ?customerEncryptionKey == null
          ? null
          : customerEncryptionKey!.toMap(),
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory BootDiskConfig.fromMap(Map<String, dynamic> map) {
    return BootDiskConfig(
      customerEncryptionKey: map['customerEncryptionKey'] == null
          ? null
          : CustomerEncryptionKey.fromMap(
              (map['customerEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
