// ignore_for_file: unused_element, unnecessary_cast

import 'storage_spaces_properties_response_hci_storage_profile.dart';
import 'storage_spaces_properties_response_status.dart';
import 'storage_spaces_properties_response_vmware_storage_profile.dart';

/// HybridAKSStorageSpec defines the desired state of HybridAKSStorage
class StorageSpacesPropertiesResponse {
  final StorageSpacesPropertiesResponseHciStorageProfile? hciStorageProfile;
  final String provisioningState;
  /// HybridAKSStorageStatus defines the observed state of HybridAKSStorage
  final StorageSpacesPropertiesResponseStatus? status;
  final StorageSpacesPropertiesResponseVmwareStorageProfile? vmwareStorageProfile;

  /// Creates a new [StorageSpacesPropertiesResponse].
  /// [hciStorageProfile] Optional.
  /// [provisioningState] Required.
  /// [status] HybridAKSStorageStatus defines the observed state of HybridAKSStorage
  /// [vmwareStorageProfile] Optional.
  StorageSpacesPropertiesResponse({
    this.hciStorageProfile,
    required this.provisioningState,
    this.status,
    this.vmwareStorageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hciStorageProfile': ?hciStorageProfile == null ? null : hciStorageProfile!.toMap(),
      'provisioningState': provisioningState,
      'status': ?status == null ? null : status!.toMap(),
      'vmwareStorageProfile': ?vmwareStorageProfile == null ? null : vmwareStorageProfile!.toMap(),
    };
  }

  factory StorageSpacesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesResponse(
      hciStorageProfile: map['hciStorageProfile'] == null ? null : StorageSpacesPropertiesResponseHciStorageProfile.fromMap((map['hciStorageProfile'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] == null ? null : StorageSpacesPropertiesResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      vmwareStorageProfile: map['vmwareStorageProfile'] == null ? null : StorageSpacesPropertiesResponseVmwareStorageProfile.fromMap((map['vmwareStorageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

