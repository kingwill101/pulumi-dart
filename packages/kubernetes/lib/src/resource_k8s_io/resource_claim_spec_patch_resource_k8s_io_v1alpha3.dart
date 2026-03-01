// ignore_for_file: unused_element, unnecessary_cast

import 'device_claim_patch_resource_k8s_io_v1alpha3.dart';

/// ResourceClaimSpec defines what is being requested in a ResourceClaim and how to configure it.
class ResourceClaimSpecPatchResourceK8sIoV1alpha3 {
  /// Controller is the name of the DRA driver that is meant to handle allocation of this claim. If empty, allocation is handled by the scheduler while scheduling a pod.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final String? controller;
  /// Devices defines how to request devices.
  final DeviceClaimPatchResourceK8sIoV1alpha3? devices;

  /// Creates a new [ResourceClaimSpecPatchResourceK8sIoV1alpha3].
  /// [controller] Controller is the name of the DRA driver that is meant to handle allocation of this claim. If empty, allocation is handled by the scheduler while scheduling a pod.
  /// [devices] Devices defines how to request devices.
  ResourceClaimSpecPatchResourceK8sIoV1alpha3({
    this.controller,
    this.devices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controller': ?controller,
      'devices': ?devices == null ? null : devices!.toMap(),
    };
  }

  factory ResourceClaimSpecPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSpecPatchResourceK8sIoV1alpha3(
      controller: map['controller'] == null ? null : map['controller'] as String,
      devices: map['devices'] == null ? null : DeviceClaimPatchResourceK8sIoV1alpha3.fromMap((map['devices'] as Map).cast<String, dynamic>()),
    );
  }
}

