// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateCpuOption {
  final pulumi.Input<String> amdSevSnp;
  final pulumi.Input<int> coreCount;
  final pulumi.Input<String> nestedVirtualization;
  final pulumi.Input<int> threadsPerCore;

  /// Creates a new [GetLaunchTemplateCpuOption].
  /// [amdSevSnp] Required.
  /// [coreCount] Required.
  /// [nestedVirtualization] Required.
  /// [threadsPerCore] Required.
  const GetLaunchTemplateCpuOption({
    required this.amdSevSnp,
    required this.coreCount,
    required this.nestedVirtualization,
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdSevSnp': amdSevSnp,
      'coreCount': coreCount,
      'nestedVirtualization': nestedVirtualization,
      'threadsPerCore': threadsPerCore,
    };
  }

  factory GetLaunchTemplateCpuOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateCpuOption(
      amdSevSnp: pulumi.Input.fromValue(map['amdSevSnp'] as String),
      coreCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['coreCount'])),
      nestedVirtualization: pulumi.Input.fromValue(map['nestedVirtualization'] as String),
      threadsPerCore: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['threadsPerCore'])),
    );
  }
}
