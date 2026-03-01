// ignore_for_file: unused_element, unnecessary_cast

import 'device_claim_patch_resource_k8s_io_v1beta2.dart';

/// ResourceClaimSpec defines what is being requested in a ResourceClaim and how to configure it.
class ResourceClaimSpecPatchResourceK8sIoV1beta2 {
  /// Devices defines how to request devices.
  final DeviceClaimPatchResourceK8sIoV1beta2? devices;

  /// Creates a new [ResourceClaimSpecPatchResourceK8sIoV1beta2].
  /// [devices] Devices defines how to request devices.
  ResourceClaimSpecPatchResourceK8sIoV1beta2({
    this.devices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devices': ?devices == null ? null : devices!.toMap(),
    };
  }

  factory ResourceClaimSpecPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSpecPatchResourceK8sIoV1beta2(
      devices: map['devices'] == null ? null : DeviceClaimPatchResourceK8sIoV1beta2.fromMap((map['devices'] as Map).cast<String, dynamic>()),
    );
  }
}

