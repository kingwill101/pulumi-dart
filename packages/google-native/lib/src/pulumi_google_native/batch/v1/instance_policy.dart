// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator.dart';
import 'attached_disk.dart';
import 'disk.dart';
import 'instance_policy_provisioning_model.dart';

/// InstancePolicy describes an instance type and resources attached to each VM created by this InstancePolicy.
class InstancePolicy {
  /// The accelerators attached to each VM instance.
  final List<Accelerator>? accelerators;

  /// Boot disk to be created and attached to each VM by this InstancePolicy. Boot disk will be deleted when the VM is deleted. Batch API now only supports booting from image.
  final Disk? bootDisk;

  /// Non-boot disks to be attached for each VM created by this InstancePolicy. New disks will be deleted when the VM is deleted. A non-boot disk is a disk that can be of a device with a file system or a raw storage drive that is not ready for data storage and accessing.
  final List<AttachedDisk>? disks;

  /// The Compute Engine machine type.
  final String? machineType;

  /// The minimum CPU platform. See https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  final String? minCpuPlatform;

  /// The provisioning model.
  final InstancePolicyProvisioningModel? provisioningModel;

  /// Optional. If specified, VMs will consume only the specified reservation. If not specified (default), VMs will consume any applicable reservation.
  final String? reservation;

  InstancePolicy({
    this.accelerators,
    this.bootDisk,
    this.disks,
    this.machineType,
    this.minCpuPlatform,
    this.provisioningModel,
    this.reservation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = Input.encodeList<Accelerator, Map<String, dynamic>>(
          acceleratorsValue, (value) => value.toMap());
    }
    final bootDiskValue = bootDisk;
    if (bootDiskValue != null) {
      map['bootDisk'] = bootDiskValue.toMap();
    }
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = Input.encodeList<AttachedDisk, Map<String, dynamic>>(
          disksValue, (value) => value.toMap());
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final provisioningModelValue = provisioningModel;
    if (provisioningModelValue != null) {
      map['provisioningModel'] = provisioningModelValue.value;
    }
    final reservationValue = reservation;
    if (reservationValue != null) {
      map['reservation'] = reservationValue;
    }
    return map;
  }

  factory InstancePolicy.fromMap(Map<String, dynamic> map) {
    return InstancePolicy(
      accelerators: map['accelerators'] == null
          ? null
          : Input.decodeList<Accelerator>(
              map['accelerators'],
              (value) =>
                  Accelerator.fromMap((value as Map).cast<String, dynamic>())),
      bootDisk: map['bootDisk'] == null
          ? null
          : Disk.fromMap((map['bootDisk'] as Map).cast<String, dynamic>()),
      disks: map['disks'] == null
          ? null
          : Input.decodeList<AttachedDisk>(
              map['disks'],
              (value) =>
                  AttachedDisk.fromMap((value as Map).cast<String, dynamic>())),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      provisioningModel: map['provisioningModel'] == null
          ? null
          : InstancePolicyProvisioningModel.fromValue(
              map['provisioningModel'] as String),
      reservation:
          map['reservation'] == null ? null : map['reservation'] as String,
    );
  }
}
