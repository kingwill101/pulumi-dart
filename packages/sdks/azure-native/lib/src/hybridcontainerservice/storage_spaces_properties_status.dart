// ignore_for_file: unused_element, unnecessary_cast

import 'storage_spaces_properties_provisioning_status.dart';

/// HybridAKSStorageStatus defines the observed state of HybridAKSStorage
class StorageSpacesPropertiesStatus {
  /// Contains Provisioning errors
  final StorageSpacesPropertiesProvisioningStatus? provisioningStatus;

  /// Creates a new [StorageSpacesPropertiesStatus].
  /// [provisioningStatus] Contains Provisioning errors
  StorageSpacesPropertiesStatus({
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
    };
  }

  factory StorageSpacesPropertiesStatus.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesStatus(
      provisioningStatus: map['provisioningStatus'] == null ? null : StorageSpacesPropertiesProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

