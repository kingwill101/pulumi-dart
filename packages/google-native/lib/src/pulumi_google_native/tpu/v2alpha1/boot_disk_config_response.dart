// ignore_for_file: unused_element, unnecessary_cast

import 'customer_encryption_key_response4.dart';

/// Boot disk configurations.
class BootDiskConfigResponse {
  /// Optional. Customer encryption key for boot disk.
  final CustomerEncryptionKeyResponse4 customerEncryptionKey;

  /// Optional. Whether the boot disk will be created with confidential compute mode.
  final bool enableConfidentialCompute;

  BootDiskConfigResponse({
    required this.customerEncryptionKey,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerEncryptionKey'] = customerEncryptionKey.toMap();
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory BootDiskConfigResponse.fromMap(Map<String, dynamic> map) {
    return BootDiskConfigResponse(
      customerEncryptionKey: CustomerEncryptionKeyResponse4.fromMap(
          (map['customerEncryptionKey'] as Map).cast<String, dynamic>()),
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
