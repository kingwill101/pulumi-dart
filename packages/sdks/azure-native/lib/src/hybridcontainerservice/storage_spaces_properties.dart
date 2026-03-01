// ignore_for_file: unused_element, unnecessary_cast

import 'storage_spaces_properties_hci_storage_profile.dart';
import 'storage_spaces_properties_status.dart';
import 'storage_spaces_properties_vmware_storage_profile.dart';

/// HybridAKSStorageSpec defines the desired state of HybridAKSStorage
class StorageSpacesProperties {
  final StorageSpacesPropertiesHciStorageProfile? hciStorageProfile;
  /// HybridAKSStorageStatus defines the observed state of HybridAKSStorage
  final StorageSpacesPropertiesStatus? status;
  final StorageSpacesPropertiesVmwareStorageProfile? vmwareStorageProfile;

  /// Creates a new [StorageSpacesProperties].
  /// [hciStorageProfile] Optional.
  /// [status] HybridAKSStorageStatus defines the observed state of HybridAKSStorage
  /// [vmwareStorageProfile] Optional.
  StorageSpacesProperties({
    this.hciStorageProfile,
    this.status,
    this.vmwareStorageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hciStorageProfile': ?hciStorageProfile == null ? null : hciStorageProfile!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
      'vmwareStorageProfile': ?vmwareStorageProfile == null ? null : vmwareStorageProfile!.toMap(),
    };
  }

  factory StorageSpacesProperties.fromMap(Map<String, dynamic> map) {
    return StorageSpacesProperties(
      hciStorageProfile: map['hciStorageProfile'] == null ? null : StorageSpacesPropertiesHciStorageProfile.fromMap((map['hciStorageProfile'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : StorageSpacesPropertiesStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      vmwareStorageProfile: map['vmwareStorageProfile'] == null ? null : StorageSpacesPropertiesVmwareStorageProfile.fromMap((map['vmwareStorageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

