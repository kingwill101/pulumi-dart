// ignore_for_file: unused_element, unnecessary_cast


class GetDesktopTypesType {
  /// The CPU cores.
  final String cpuCount;
  /// The size of the data disk. Unit: GiB.
  final String dataDiskSize;
  /// Specification ID.
  final String desktopTypeId;
  /// The GPU cores.
  final double gpuCount;
  /// The GPU video memory.
  final String gpuSpec;
  /// The ID of the Desktop Type.
  final String id;
  /// The Specification family.
  final String instanceTypeFamily;
  /// The Memory size. Unit: MiB.
  final String memorySize;
  /// The status of the resource.
  final String status;
  /// The size of the system disk. Unit: GiB.
  final String systemDiskSize;

  /// Creates a new [GetDesktopTypesType].
  /// [cpuCount] The CPU cores.
  /// [dataDiskSize] The size of the data disk. Unit: GiB.
  /// [desktopTypeId] Specification ID.
  /// [gpuCount] The GPU cores.
  /// [gpuSpec] The GPU video memory.
  /// [id] The ID of the Desktop Type.
  /// [instanceTypeFamily] The Specification family.
  /// [memorySize] The Memory size. Unit: MiB.
  /// [status] The status of the resource.
  /// [systemDiskSize] The size of the system disk. Unit: GiB.
  GetDesktopTypesType({
    required this.cpuCount,
    required this.dataDiskSize,
    required this.desktopTypeId,
    required this.gpuCount,
    required this.gpuSpec,
    required this.id,
    required this.instanceTypeFamily,
    required this.memorySize,
    required this.status,
    required this.systemDiskSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'dataDiskSize': dataDiskSize,
      'desktopTypeId': desktopTypeId,
      'gpuCount': gpuCount,
      'gpuSpec': gpuSpec,
      'id': id,
      'instanceTypeFamily': instanceTypeFamily,
      'memorySize': memorySize,
      'status': status,
      'systemDiskSize': systemDiskSize,
    };
  }

  factory GetDesktopTypesType.fromMap(Map<String, dynamic> map) {
    return GetDesktopTypesType(
      cpuCount: map['cpuCount'] as String,
      dataDiskSize: map['dataDiskSize'] as String,
      desktopTypeId: map['desktopTypeId'] as String,
      gpuCount: map['gpuCount'] as double,
      gpuSpec: map['gpuSpec'] as String,
      id: map['id'] as String,
      instanceTypeFamily: map['instanceTypeFamily'] as String,
      memorySize: map['memorySize'] as String,
      status: map['status'] as String,
      systemDiskSize: map['systemDiskSize'] as String,
    );
  }
}

