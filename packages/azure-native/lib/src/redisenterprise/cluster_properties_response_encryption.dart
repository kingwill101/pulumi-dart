// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_properties_response_customer_managed_key_encryption.dart';

/// Encryption-at-rest configuration for the cluster.
class ClusterPropertiesResponseEncryption {
  /// All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  final ClusterPropertiesResponseCustomerManagedKeyEncryption? customerManagedKeyEncryption;

  /// Creates a new [ClusterPropertiesResponseEncryption].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  ClusterPropertiesResponseEncryption({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
    };
  }

  factory ClusterPropertiesResponseEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterPropertiesResponseEncryption(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : ClusterPropertiesResponseCustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

