// ignore_for_file: unused_element, unnecessary_cast


/// Hardware profile for the machine
class HardwareProfileResponse {
  /// Number of cpu cores in the machine
  final double cpuCores;
  /// Number of cpu sockets in the machine
  final double cpuSockets;
  /// manufacturer info of the machine
  final String manufacturer;
  /// Memory capacity of the machine
  final double memoryCapacityInGb;
  /// Model info of the machine
  final String model;
  /// Process type of the machine
  final String processorType;
  /// Serial number of the machine
  final String serialNumber;

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
      cpuCores: map['cpuCores'] as double,
      cpuSockets: map['cpuSockets'] as double,
      manufacturer: map['manufacturer'] as String,
      memoryCapacityInGb: map['memoryCapacityInGb'] as double,
      model: map['model'] as String,
      processorType: map['processorType'] as String,
      serialNumber: map['serialNumber'] as String,
    );
  }
}

