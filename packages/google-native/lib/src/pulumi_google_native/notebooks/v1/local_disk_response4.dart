// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'local_disk_initialize_params_response.dart';
import 'runtime_guest_os_feature_response.dart';

/// A Local attached disk resource.
class LocalDiskResponse4 {
  /// Optional. Output only. Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final bool autoDelete;

  /// Optional. Output only. Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final bool boot;

  /// Optional. Output only. Specifies a unique device name of your choice that is reflected into the `/dev/disk/by-id/google-*` tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String deviceName;

  /// Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final List<RuntimeGuestOsFeatureResponse> guestOsFeatures;

  /// A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  final int index;

  /// Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final LocalDiskInitializeParamsResponse initializeParams;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  final String interface;

  /// Type of the resource. Always compute#attachedDisk for attached disks.
  final String kind;

  /// Any valid publicly visible licenses.
  final List<String> licenses;

  /// The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  final String mode;

  /// Specifies a valid partial or full URL to an existing Persistent Disk resource.
  final String source;

  /// Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  final String type;

  LocalDiskResponse4({
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.guestOsFeatures,
    required this.index,
    required this.initializeParams,
    required this.interface,
    required this.kind,
    required this.licenses,
    required this.mode,
    required this.source,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDelete'] = autoDelete;
    map['boot'] = boot;
    map['deviceName'] = deviceName;
    map['guestOsFeatures'] =
        Input.encodeList<RuntimeGuestOsFeatureResponse, Map<String, dynamic>>(
            guestOsFeatures, (value) => value.toMap());
    map['index'] = index;
    map['initializeParams'] = initializeParams.toMap();
    map['interface'] = interface;
    map['kind'] = kind;
    map['licenses'] = licenses;
    map['mode'] = mode;
    map['source'] = source;
    map['type'] = type;
    return map;
  }

  factory LocalDiskResponse4.fromMap(Map<String, dynamic> map) {
    return LocalDiskResponse4(
      autoDelete: map['autoDelete'] as bool,
      boot: map['boot'] as bool,
      deviceName: map['deviceName'] as String,
      guestOsFeatures: Input.decodeList<RuntimeGuestOsFeatureResponse>(
          map['guestOsFeatures'],
          (value) => RuntimeGuestOsFeatureResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      index: map['index'] as int,
      initializeParams: LocalDiskInitializeParamsResponse.fromMap(
          (map['initializeParams'] as Map).cast<String, dynamic>()),
      interface: map['interface'] as String,
      kind: map['kind'] as String,
      licenses: (map['licenses'] as List).cast<String>(),
      mode: map['mode'] as String,
      source: map['source'] as String,
      type: map['type'] as String,
    );
  }
}
