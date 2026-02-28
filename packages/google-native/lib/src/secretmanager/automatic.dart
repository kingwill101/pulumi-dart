// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_encryption.dart';

/// A replication policy that replicates the Secret payload without any restrictions.
class Automatic {
  /// Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  final CustomerManagedEncryption? customerManagedEncryption;

  /// Creates a new [Automatic].
  /// [customerManagedEncryption] Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  Automatic({
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

  factory Automatic.fromMap(Map<String, dynamic> map) {
    return Automatic(
      customerManagedEncryption: map['customerManagedEncryption'] == null
          ? null
          : CustomerManagedEncryption.fromMap(
              (map['customerManagedEncryption'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
