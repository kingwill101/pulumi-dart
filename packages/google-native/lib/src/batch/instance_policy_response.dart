// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_response.dart';
import 'attached_disk_response.dart';
import 'disk_response.dart';

/// InstancePolicy describes an instance type and resources attached to each VM created by this InstancePolicy.
class InstancePolicyResponse {
  /// The accelerators attached to each VM instance.
  final List<AcceleratorResponse> accelerators;

  /// Boot disk to be created and attached to each VM by this InstancePolicy. Boot disk will be deleted when the VM is deleted. Batch API now only supports booting from image.
  final DiskResponse bootDisk;

  /// Non-boot disks to be attached for each VM created by this InstancePolicy. New disks will be deleted when the VM is deleted. A non-boot disk is a disk that can be of a device with a file system or a raw storage drive that is not ready for data storage and accessing.
  final List<AttachedDiskResponse> disks;

  /// The Compute Engine machine type.
  final String machineType;

  /// The minimum CPU platform. See https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  final String minCpuPlatform;

  /// The provisioning model.
  final String provisioningModel;

  /// Optional. If specified, VMs will consume only the specified reservation. If not specified (default), VMs will consume any applicable reservation.
  final String reservation;

  /// Creates a new [InstancePolicyResponse].
  /// [accelerators] The accelerators attached to each VM instance.
  /// [bootDisk] Boot disk to be created and attached to each VM by this InstancePolicy. Boot disk will be deleted when the VM is deleted. Batch API now only supports booting from image.
  /// [disks] Non-boot disks to be attached for each VM created by this InstancePolicy. New disks will be deleted when the VM is deleted. A non-boot disk is a disk that can be of a device with a file system or a raw storage drive that is not ready for data storage and accessing.
  /// [machineType] The Compute Engine machine type.
  /// [minCpuPlatform] The minimum CPU platform. See https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  /// [provisioningModel] The provisioning model.
  /// [reservation] Optional. If specified, VMs will consume only the specified reservation. If not specified (default), VMs will consume any applicable reservation.
  InstancePolicyResponse({
    required this.accelerators,
    required this.bootDisk,
    required this.disks,
    required this.machineType,
    required this.minCpuPlatform,
    required this.provisioningModel,
    required this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators':
          pulumi.Input.encodeList<AcceleratorResponse, Map<String, dynamic>>(
            accelerators,
            (value) => value.toMap(),
          ),
      'bootDisk': bootDisk.toMap(),
      'disks':
          pulumi.Input.encodeList<AttachedDiskResponse, Map<String, dynamic>>(
            disks,
            (value) => value.toMap(),
          ),
      'machineType': machineType,
      'minCpuPlatform': minCpuPlatform,
      'provisioningModel': provisioningModel,
      'reservation': reservation,
    };
  }

  factory InstancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return InstancePolicyResponse(
      accelerators: pulumi.Input.decodeList<AcceleratorResponse>(
        map['accelerators'],
        (value) =>
            AcceleratorResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      bootDisk: DiskResponse.fromMap(
        (map['bootDisk'] as Map).cast<String, dynamic>(),
      ),
      disks: pulumi.Input.decodeList<AttachedDiskResponse>(
        map['disks'],
        (value) => AttachedDiskResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      machineType: map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] as String,
      provisioningModel: map['provisioningModel'] as String,
      reservation: map['reservation'] as String,
    );
  }
}
