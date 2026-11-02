// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentSpecificationComputeResourceRequirements {
  /// Maximum MB of memory to allocate to run a model. Minimum value of `128`.
  final pulumi.Input<int?>? maxMemoryRequiredInMb;
  /// Minimum MB of memory to allocate to run a model. Minimum value of `128`.
  final pulumi.Input<int> minMemoryRequiredInMb;
  /// Number of accelerators (GPUs or AWS Inferentia) to allocate. Minimum value of `1`.
  final pulumi.Input<double?>? numberOfAcceleratorDevicesRequired;
  /// Number of CPU cores to allocate. Minimum value of `0.25`.
  final pulumi.Input<double?>? numberOfCpuCoresRequired;

  /// Creates a new [InferenceComponentSpecificationComputeResourceRequirements].
  /// [maxMemoryRequiredInMb] Maximum MB of memory to allocate to run a model. Minimum value of `128`.
  /// [minMemoryRequiredInMb] Minimum MB of memory to allocate to run a model. Minimum value of `128`.
  /// [numberOfAcceleratorDevicesRequired] Number of accelerators (GPUs or AWS Inferentia) to allocate. Minimum value of `1`.
  /// [numberOfCpuCoresRequired] Number of CPU cores to allocate. Minimum value of `0.25`.
  const InferenceComponentSpecificationComputeResourceRequirements({
    this.maxMemoryRequiredInMb,
    required this.minMemoryRequiredInMb,
    this.numberOfAcceleratorDevicesRequired,
    this.numberOfCpuCoresRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxMemoryRequiredInMb': ?maxMemoryRequiredInMb,
      'minMemoryRequiredInMb': minMemoryRequiredInMb,
      'numberOfAcceleratorDevicesRequired': ?numberOfAcceleratorDevicesRequired,
      'numberOfCpuCoresRequired': ?numberOfCpuCoresRequired,
    };
  }

  factory InferenceComponentSpecificationComputeResourceRequirements.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationComputeResourceRequirements(
      maxMemoryRequiredInMb: (() { final guardedValue = map['maxMemoryRequiredInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minMemoryRequiredInMb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minMemoryRequiredInMb'])),
      numberOfAcceleratorDevicesRequired: (() { final guardedValue = map['numberOfAcceleratorDevicesRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      numberOfCpuCoresRequired: (() { final guardedValue = map['numberOfCpuCoresRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
