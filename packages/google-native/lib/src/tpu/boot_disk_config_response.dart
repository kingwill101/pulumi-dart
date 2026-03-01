// ignore_for_file: unused_element, unnecessary_cast

import 'customer_encryption_key_response.dart';

/// Boot disk configurations.
class BootDiskConfigResponse {
  /// Optional. Customer encryption key for boot disk.
  final CustomerEncryptionKeyResponse customerEncryptionKey;

  /// Optional. Whether the boot disk will be created with confidential compute mode.
  final bool enableConfidentialCompute;

  /// Creates a new [BootDiskConfigResponse].
  /// [customerEncryptionKey] Optional. Customer encryption key for boot disk.
  /// [enableConfidentialCompute] Optional. Whether the boot disk will be created with confidential compute mode.
  BootDiskConfigResponse({
    required this.customerEncryptionKey,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEncryptionKey': customerEncryptionKey.toMap(),
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory BootDiskConfigResponse.fromMap(Map<String, dynamic> map) {
    return BootDiskConfigResponse(
      customerEncryptionKey: CustomerEncryptionKeyResponse.fromMap(
        (map['customerEncryptionKey'] as Map).cast<String, dynamic>(),
      ),
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
