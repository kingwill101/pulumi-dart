// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_spaces_properties_response_hci_storage_profile.dart';
import 'storage_spaces_properties_response_status.dart';
import 'storage_spaces_properties_response_vmware_storage_profile.dart';

/// HybridAKSStorageSpec defines the desired state of HybridAKSStorage
class StorageSpacesPropertiesResponse {
  final pulumi.Input<StorageSpacesPropertiesResponseHciStorageProfile>? hciStorageProfile;
  final pulumi.Input<String> provisioningState;
  /// HybridAKSStorageStatus defines the observed state of HybridAKSStorage
  final pulumi.Input<StorageSpacesPropertiesResponseStatus>? status;
  final pulumi.Input<StorageSpacesPropertiesResponseVmwareStorageProfile>? vmwareStorageProfile;

  /// Creates a new [StorageSpacesPropertiesResponse].
  /// [hciStorageProfile] Optional.
  /// [provisioningState] Required.
  /// [status] HybridAKSStorageStatus defines the observed state of HybridAKSStorage
  /// [vmwareStorageProfile] Optional.
  const StorageSpacesPropertiesResponse({
    this.hciStorageProfile,
    required this.provisioningState,
    this.status,
    this.vmwareStorageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hciStorageProfile': ?pulumi.Input.mapOptionalInputValue<StorageSpacesPropertiesResponseHciStorageProfile, Map<String, dynamic>>(hciStorageProfile, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': ?pulumi.Input.mapOptionalInputValue<StorageSpacesPropertiesResponseStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'vmwareStorageProfile': ?pulumi.Input.mapOptionalInputValue<StorageSpacesPropertiesResponseVmwareStorageProfile, Map<String, dynamic>>(vmwareStorageProfile, (value) => value.toMap()),
    };
  }

  factory StorageSpacesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesResponse(
      hciStorageProfile: (() { final guardedValue = map['hciStorageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSpacesPropertiesResponseHciStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSpacesPropertiesResponseStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmwareStorageProfile: (() { final guardedValue = map['vmwareStorageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSpacesPropertiesResponseVmwareStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

