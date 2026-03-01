// ignore_for_file: unused_element, unnecessary_cast

/// Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new runtime. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
class LocalDiskInitializeParamsResponse {
  /// Optional. Provide this property when creating the disk.
  final String description;

  /// Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.
  final String diskName;

  /// Optional. Specifies the size of the disk in base-2 GB. If not specified, the disk will be the same size as the image (usually 10GB). If specified, the size must be equal to or larger than 10GB. Default 100 GB.
  final String diskSizeGb;

  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final String diskType;

  /// Optional. Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  final Map<String, String> labels;

  /// Creates a new [LocalDiskInitializeParamsResponse].
  /// [description] Optional. Provide this property when creating the disk.
  /// [diskName] Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.
  /// [diskSizeGb] Optional. Specifies the size of the disk in base-2 GB. If not specified, the disk will be the same size as the image (usually 10GB). If specified, the size must be equal to or larger than 10GB. Default 100 GB.
  /// [diskType] Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [labels] Optional. Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  LocalDiskInitializeParamsResponse({
    required this.description,
    required this.diskName,
    required this.diskSizeGb,
    required this.diskType,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'diskName': diskName,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'labels': labels,
    };
  }

  factory LocalDiskInitializeParamsResponse.fromMap(Map<String, dynamic> map) {
    return LocalDiskInitializeParamsResponse(
      description: map['description'] as String,
      diskName: map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] as String,
      diskType: map['diskType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
