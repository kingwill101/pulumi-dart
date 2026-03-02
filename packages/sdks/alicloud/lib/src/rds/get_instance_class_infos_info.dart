// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceClassInfosInfo {
  /// The code of the instance type.
  final pulumi.Input<String>? classCode;
  /// The instance family of the instance.
  final pulumi.Input<String>? classGroup;
  /// The number of cores that are supported by the instance type. Unit: cores.
  final pulumi.Input<String>? cpu;
  /// The architecture of the instance type.
  final pulumi.Input<String>? instructionSetArch;
  /// The maximum number of connections that are supported by the instance type. Unit: connections.
  final pulumi.Input<String>? maxConnections;
  /// The maximum I/O bandwidth that is supported by the instance type. Unit: Mbit/s.
  final pulumi.Input<String>? maxIombps;
  /// The maximum input/output operations per second (IOPS) that is supported by the instance type. Unit: operations per second.
  final pulumi.Input<String>? maxIops;
  /// The memory capacity that is supported by the instance type. Unit: GB.
  final pulumi.Input<String>? memoryClass;
  /// The fee that you must pay for the instance type. Unit: cent (USD).
  final pulumi.Input<String>? referencePrice;

  /// Creates a new [GetInstanceClassInfosInfo].
  /// [classCode] The code of the instance type.
  /// [classGroup] The instance family of the instance.
  /// [cpu] The number of cores that are supported by the instance type. Unit: cores.
  /// [instructionSetArch] The architecture of the instance type.
  /// [maxConnections] The maximum number of connections that are supported by the instance type. Unit: connections.
  /// [maxIombps] The maximum I/O bandwidth that is supported by the instance type. Unit: Mbit/s.
  /// [maxIops] The maximum input/output operations per second (IOPS) that is supported by the instance type. Unit: operations per second.
  /// [memoryClass] The memory capacity that is supported by the instance type. Unit: GB.
  /// [referencePrice] The fee that you must pay for the instance type. Unit: cent (USD).
  GetInstanceClassInfosInfo({
    this.classCode,
    this.classGroup,
    this.cpu,
    this.instructionSetArch,
    this.maxConnections,
    this.maxIombps,
    this.maxIops,
    this.memoryClass,
    this.referencePrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classCode': ?classCode,
      'classGroup': ?classGroup,
      'cpu': ?cpu,
      'instructionSetArch': ?instructionSetArch,
      'maxConnections': ?maxConnections,
      'maxIombps': ?maxIombps,
      'maxIops': ?maxIops,
      'memoryClass': ?memoryClass,
      'referencePrice': ?referencePrice,
    };
  }

  factory GetInstanceClassInfosInfo.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassInfosInfo(
      classCode: map['classCode'] == null ? null : (map['classCode']! as String).input(),
      classGroup: map['classGroup'] == null ? null : (map['classGroup']! as String).input(),
      cpu: map['cpu'] == null ? null : (map['cpu']! as String).input(),
      instructionSetArch: map['instructionSetArch'] == null ? null : (map['instructionSetArch']! as String).input(),
      maxConnections: map['maxConnections'] == null ? null : (map['maxConnections']! as String).input(),
      maxIombps: map['maxIombps'] == null ? null : (map['maxIombps']! as String).input(),
      maxIops: map['maxIops'] == null ? null : (map['maxIops']! as String).input(),
      memoryClass: map['memoryClass'] == null ? null : (map['memoryClass']! as String).input(),
      referencePrice: map['referencePrice'] == null ? null : (map['referencePrice']! as String).input(),
    );
  }
}

