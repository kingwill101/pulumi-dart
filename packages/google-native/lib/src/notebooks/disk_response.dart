// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_os_feature_response.dart';

/// An instance-attached disk resource.
class DiskResponse {
  /// Indicates whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final bool autoDelete;
  /// Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final bool boot;
  /// Indicates a unique device name of your choice that is reflected into the `/dev/disk/by-id/google-*` tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine.This field is only applicable for persistent disks.
  final String deviceName;
  /// Indicates the size of the disk in base-2 GB.
  final String diskSizeGb;
  /// Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final List<GuestOsFeatureResponse> guestOsFeatures;
  /// A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  final String index;
  /// Indicates the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  final String interface;
  /// Type of the resource. Always compute#attachedDisk for attached disks.
  final String kind;
  /// A list of publicly visible licenses. Reserved for Google's use. A License represents billing and aggregate usage data for public and marketplace images.
  final List<String> licenses;
  /// The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  final String mode;
  /// Indicates a valid partial or full URL to an existing Persistent Disk resource.
  final String source;
  /// Indicates the type of the disk, either `SCRATCH` or `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  final String type;

  /// Creates a new [DiskResponse].
  /// [autoDelete] Indicates whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [boot] Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  /// [deviceName] Indicates a unique device name of your choice that is reflected into the `/dev/disk/by-id/google-*` tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine.This field is only applicable for persistent disks.
  /// [diskSizeGb] Indicates the size of the disk in base-2 GB.
  /// [guestOsFeatures] Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [index] A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  /// [interface] Indicates the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  /// [kind] Type of the resource. Always compute#attachedDisk for attached disks.
  /// [licenses] A list of publicly visible licenses. Reserved for Google's use. A License represents billing and aggregate usage data for public and marketplace images.
  /// [mode] The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  /// [source] Indicates a valid partial or full URL to an existing Persistent Disk resource.
  /// [type] Indicates the type of the disk, either `SCRATCH` or `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  DiskResponse({
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.diskSizeGb,
    required this.guestOsFeatures,
    required this.index,
    required this.interface,
    required this.kind,
    required this.licenses,
    required this.mode,
    required this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': autoDelete,
      'boot': boot,
      'deviceName': deviceName,
      'diskSizeGb': diskSizeGb,
      'guestOsFeatures': pulumi.Input.encodeList<GuestOsFeatureResponse, Map<String, dynamic>>(guestOsFeatures, (value) => value.toMap()),
      'index': index,
      'interface': interface,
      'kind': kind,
      'licenses': licenses,
      'mode': mode,
      'source': source,
      'type': type,
    };
  }

  factory DiskResponse.fromMap(Map<String, dynamic> map) {
    return DiskResponse(
      autoDelete: map['autoDelete'] as bool,
      boot: map['boot'] as bool,
      deviceName: map['deviceName'] as String,
      diskSizeGb: map['diskSizeGb'] as String,
      guestOsFeatures: pulumi.Input.decodeList<GuestOsFeatureResponse>(map['guestOsFeatures'], (value) => GuestOsFeatureResponse.fromMap((value as Map).cast<String, dynamic>())),
      index: map['index'] as String,
      interface: map['interface'] as String,
      kind: map['kind'] as String,
      licenses: (map['licenses'] as List).cast<String>(),
      mode: map['mode'] as String,
      source: map['source'] as String,
      type: map['type'] as String,
    );
  }
}

