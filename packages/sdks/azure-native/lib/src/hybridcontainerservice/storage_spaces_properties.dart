// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_spaces_properties_hci_storage_profile.dart';
import 'storage_spaces_properties_status.dart';
import 'storage_spaces_properties_vmware_storage_profile.dart';

/// HybridAKSStorageSpec defines the desired state of HybridAKSStorage
class StorageSpacesProperties {
  final pulumi.Input<StorageSpacesPropertiesHciStorageProfile>? hciStorageProfile;
  /// HybridAKSStorageStatus defines the observed state of HybridAKSStorage
  final pulumi.Input<StorageSpacesPropertiesStatus>? status;
  final pulumi.Input<StorageSpacesPropertiesVmwareStorageProfile>? vmwareStorageProfile;

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
      'hciStorageProfile': ?pulumi.Input.mapOptionalInputValue<StorageSpacesPropertiesHciStorageProfile, Map<String, dynamic>>(hciStorageProfile, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<StorageSpacesPropertiesStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'vmwareStorageProfile': ?pulumi.Input.mapOptionalInputValue<StorageSpacesPropertiesVmwareStorageProfile, Map<String, dynamic>>(vmwareStorageProfile, (value) => value.toMap()),
    };
  }

  factory StorageSpacesProperties.fromMap(Map<String, dynamic> map) {
    return StorageSpacesProperties(
      hciStorageProfile: (() { final guardedValue = map['hciStorageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSpacesPropertiesHciStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSpacesPropertiesStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmwareStorageProfile: (() { final guardedValue = map['vmwareStorageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSpacesPropertiesVmwareStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

