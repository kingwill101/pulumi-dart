// ignore_for_file: unused_element, unnecessary_cast

import 'local_disk_initialize_params.dart';

/// A Local attached disk resource.
class LocalDisk {
  /// Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final LocalDiskInitializeParams? initializeParams;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  final String? interface;

  /// The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  final String? mode;

  /// Specifies a valid partial or full URL to an existing Persistent Disk resource.
  final String? source;

  /// Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  final String? type;

  /// Creates a new [LocalDisk].
  /// [initializeParams] Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  /// [mode] The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  /// [source] Specifies a valid partial or full URL to an existing Persistent Disk resource.
  /// [type] Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  LocalDisk({
    this.initializeParams,
    this.interface,
    this.mode,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final initializeParamsValue = initializeParams;
    if (initializeParamsValue != null) {
      map['initializeParams'] = initializeParamsValue.toMap();
    }
    final interfaceValue = interface;
    if (interfaceValue != null) {
      map['interface'] = interfaceValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory LocalDisk.fromMap(Map<String, dynamic> map) {
    return LocalDisk(
      initializeParams: map['initializeParams'] == null
          ? null
          : LocalDiskInitializeParams.fromMap(
              (map['initializeParams'] as Map).cast<String, dynamic>()),
      interface: map['interface'] == null ? null : map['interface'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
