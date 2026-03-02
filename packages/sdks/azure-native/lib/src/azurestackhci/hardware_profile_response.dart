// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hardware profile for the machine
class HardwareProfileResponse {
  /// Number of cpu cores in the machine
  final pulumi.Input<double> cpuCores;
  /// Number of cpu sockets in the machine
  final pulumi.Input<double> cpuSockets;
  /// manufacturer info of the machine
  final pulumi.Input<String> manufacturer;
  /// Memory capacity of the machine
  final pulumi.Input<double> memoryCapacityInGb;
  /// Model info of the machine
  final pulumi.Input<String> model;
  /// Process type of the machine
  final pulumi.Input<String> processorType;
  /// Serial number of the machine
  final pulumi.Input<String> serialNumber;

  /// Creates a new [HardwareProfileResponse].
  /// [cpuCores] Number of cpu cores in the machine
  /// [cpuSockets] Number of cpu sockets in the machine
  /// [manufacturer] manufacturer info of the machine
  /// [memoryCapacityInGb] Memory capacity of the machine
  /// [model] Model info of the machine
  /// [processorType] Process type of the machine
  /// [serialNumber] Serial number of the machine
  HardwareProfileResponse({
    required this.cpuCores,
    required this.cpuSockets,
    required this.manufacturer,
    required this.memoryCapacityInGb,
    required this.model,
    required this.processorType,
    required this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCores': cpuCores,
      'cpuSockets': cpuSockets,
      'manufacturer': manufacturer,
      'memoryCapacityInGb': memoryCapacityInGb,
      'model': model,
      'processorType': processorType,
      'serialNumber': serialNumber,
    };
  }

  factory HardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return HardwareProfileResponse(
      cpuCores: (map['cpuCores'] as double).input(),
      cpuSockets: (map['cpuSockets'] as double).input(),
      manufacturer: (map['manufacturer'] as String).input(),
      memoryCapacityInGb: (map['memoryCapacityInGb'] as double).input(),
      model: (map['model'] as String).input(),
      processorType: (map['processorType'] as String).input(),
      serialNumber: (map['serialNumber'] as String).input(),
    );
  }
}

