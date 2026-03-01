// ignore_for_file: unused_element, unnecessary_cast

class RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams {
  /// Provide this property when creating the disk.
  final String? description;

  /// Specifies the disk name. If not specified, the default is
  /// to use the name of the instance. If the disk with the
  /// instance name exists already in the given zone/region, a
  /// new name will be automatically generated.
  final String? diskName;

  /// Specifies the size of the disk in base-2 GB. If not
  /// specified, the disk will be the same size as the image
  /// (usually 10GB). If specified, the size must be equal to
  /// or larger than 10GB. Default 100 GB.
  final int? diskSizeGb;

  /// The type of the boot disk attached to this runtime,
  /// defaults to standard persistent disk. For valid values,
  /// see `https://cloud.google.com/vertex-ai/docs/workbench/
  /// reference/rest/v1/projects.locations.runtimes#disktype`
  final String? diskType;

  /// Labels to apply to this disk. These can be later modified
  /// by the disks.setLabels method. This field is only
  /// applicable for persistent disks.
  final Map<String, String>? labels;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams].
  /// [description] Provide this property when creating the disk.
  /// [diskName] Specifies the disk name. If not specified, the default is
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB. If not
  /// [diskType] The type of the boot disk attached to this runtime,
  /// [labels] Labels to apply to this disk. These can be later modified
  RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams({
    this.description,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskName': ?diskName,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'labels': ?labels,
    };
  }

  factory RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParams(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
