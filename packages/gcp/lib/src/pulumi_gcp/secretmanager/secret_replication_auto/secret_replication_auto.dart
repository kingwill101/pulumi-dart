// ignore_for_file: unused_element, unnecessary_cast

import '../secret_replication_auto_customer_managed_encryption/secret_replication_auto_customer_managed_encryption.dart';

class SecretReplicationAuto {
  /// The customer-managed encryption configuration of the Secret.
  /// If no configuration is provided, Google-managed default
  /// encryption is used.
  /// Structure is documented below.
  final SecretReplicationAutoCustomerManagedEncryption?
      customerManagedEncryption;

  SecretReplicationAuto({
    this.customerManagedEncryption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerManagedEncryptionValue = customerManagedEncryption;
    if (customerManagedEncryptionValue != null) {
      map['customerManagedEncryption'] = customerManagedEncryptionValue.toMap();
    }
    return map;
  }

  factory SecretReplicationAuto.fromMap(Map<String, dynamic> map) {
    return SecretReplicationAuto(
      customerManagedEncryption: map['customerManagedEncryption'] == null
          ? null
          : SecretReplicationAutoCustomerManagedEncryption.fromMap(
              (map['customerManagedEncryption'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
