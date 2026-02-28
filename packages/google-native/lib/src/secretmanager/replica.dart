// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_encryption.dart';

/// Represents a Replica for this Secret.
class Replica {
  /// Optional. The customer-managed encryption configuration of the User-Managed Replica. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  final CustomerManagedEncryption? customerManagedEncryption;
  /// The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  final String? location;

  /// Creates a new [Replica].
  /// [customerManagedEncryption] Optional. The customer-managed encryption configuration of the User-Managed Replica. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  /// [location] The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  Replica({
    this.customerManagedEncryption,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryption': ?customerManagedEncryption == null ? null : customerManagedEncryption!.toMap(),
      'location': ?location,
    };
  }

  factory Replica.fromMap(Map<String, dynamic> map) {
    return Replica(
      customerManagedEncryption: map['customerManagedEncryption'] == null ? null : CustomerManagedEncryption.fromMap((map['customerManagedEncryption'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}

