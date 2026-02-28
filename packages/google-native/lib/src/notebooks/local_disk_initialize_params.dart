// ignore_for_file: unused_element, unnecessary_cast

import 'local_disk_initialize_params_disk_type.dart';

/// Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new runtime. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
class LocalDiskInitializeParams {
  /// Optional. Provide this property when creating the disk.
  final String? description;

  /// Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.
  final String? diskName;

  /// Optional. Specifies the size of the disk in base-2 GB. If not specified, the disk will be the same size as the image (usually 10GB). If specified, the size must be equal to or larger than 10GB. Default 100 GB.
  final String? diskSizeGb;

  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final LocalDiskInitializeParamsDiskType? diskType;

  /// Optional. Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  final Map<String, String>? labels;

  /// Creates a new [LocalDiskInitializeParams].
  /// [description] Optional. Provide this property when creating the disk.
  /// [diskName] Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.
  /// [diskSizeGb] Optional. Specifies the size of the disk in base-2 GB. If not specified, the disk will be the same size as the image (usually 10GB). If specified, the size must be equal to or larger than 10GB. Default 100 GB.
  /// [diskType] Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [labels] Optional. Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  LocalDiskInitializeParams({
    this.description,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskNameValue = diskName;
    if (diskNameValue != null) {
      map['diskName'] = diskNameValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue.value;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    return map;
  }

  factory LocalDiskInitializeParams.fromMap(Map<String, dynamic> map) {
    return LocalDiskInitializeParams(
      description:
          map['description'] == null ? null : map['description'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      diskType: map['diskType'] == null
          ? null
          : LocalDiskInitializeParamsDiskType.fromValue(
              map['diskType'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
