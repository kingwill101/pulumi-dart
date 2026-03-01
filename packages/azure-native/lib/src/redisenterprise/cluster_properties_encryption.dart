// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_properties_customer_managed_key_encryption.dart';

/// Encryption-at-rest configuration for the cluster.
class ClusterPropertiesEncryption {
  /// All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  final ClusterPropertiesCustomerManagedKeyEncryption? customerManagedKeyEncryption;

  /// Creates a new [ClusterPropertiesEncryption].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  ClusterPropertiesEncryption({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
    };
  }

  factory ClusterPropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterPropertiesEncryption(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : ClusterPropertiesCustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

