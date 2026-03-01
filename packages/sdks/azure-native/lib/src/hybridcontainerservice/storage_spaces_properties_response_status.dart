// ignore_for_file: unused_element, unnecessary_cast

import 'storage_spaces_properties_response_provisioning_status.dart';

/// HybridAKSStorageStatus defines the observed state of HybridAKSStorage
class StorageSpacesPropertiesResponseStatus {
  /// Contains Provisioning errors
  final StorageSpacesPropertiesResponseProvisioningStatus? provisioningStatus;

  /// Creates a new [StorageSpacesPropertiesResponseStatus].
  /// [provisioningStatus] Contains Provisioning errors
  StorageSpacesPropertiesResponseStatus({
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
    };
  }

  factory StorageSpacesPropertiesResponseStatus.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesResponseStatus(
      provisioningStatus: map['provisioningStatus'] == null ? null : StorageSpacesPropertiesResponseProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

