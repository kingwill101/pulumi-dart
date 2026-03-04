// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDesktopTypesType {
  /// The CPU cores.
  final pulumi.Input<String> cpuCount;

  /// The size of the data disk. Unit: GiB.
  final pulumi.Input<String> dataDiskSize;

  /// Specification ID.
  final pulumi.Input<String> desktopTypeId;

  /// The GPU cores.
  final pulumi.Input<double> gpuCount;

  /// The GPU video memory.
  final pulumi.Input<String> gpuSpec;

  /// The ID of the Desktop Type.
  final pulumi.Input<String> id;

  /// The Specification family.
  final pulumi.Input<String> instanceTypeFamily;

  /// The Memory size. Unit: MiB.
  final pulumi.Input<String> memorySize;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// The size of the system disk. Unit: GiB.
  final pulumi.Input<String> systemDiskSize;

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
      cpuCount: pulumi.Input.fromValue(map['cpuCount'] as String),
      dataDiskSize: pulumi.Input.fromValue(map['dataDiskSize'] as String),
      desktopTypeId: pulumi.Input.fromValue(map['desktopTypeId'] as String),
      gpuCount: pulumi.Input.fromValue(map['gpuCount'] as double),
      gpuSpec: pulumi.Input.fromValue(map['gpuSpec'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceTypeFamily: pulumi.Input.fromValue(
        map['instanceTypeFamily'] as String,
      ),
      memorySize: pulumi.Input.fromValue(map['memorySize'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      systemDiskSize: pulumi.Input.fromValue(map['systemDiskSize'] as String),
    );
  }
}
