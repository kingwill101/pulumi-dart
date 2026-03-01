// ignore_for_file: unused_element, unnecessary_cast


/// The SAP instance specific configuration data.
class ConfigurationDataResponse {
  /// Provide the CPU value of the server. For example, 16, 32 etc.
  final int cpu;
  /// Provide the CPU clock speed of the server in MHz. This should be a non-zero value. For example, 2100.
  final int cpuInMhz;
  /// Provide the CPU architecture type of the server. For example, Xeon Platinum 8171M, Xeon E5-2673 v3.
  final String cpuType;
  /// The database of this is a server instance. Applicable only if SAP instance type for this server instance is 'DB'.
  final String databaseType;
  /// Provide the HW manufacturer company of the server.  For example, Microsoft Corporation.
  final String hardwareManufacturer;
  /// Specify if the Hardware is a physical server or virtual machine.
  final String model;
  /// Provide the RAM of the server. This should be a non-zero value. For example, 256.
  final int ram;
  /// Provide the SAPS for each server of the SAP system. This should be a non-zero value. For example, 1000.
  final int saps;
  /// Provide the target HANA database size you need. Applicable only if SAP instance type for this server instance is 'DB' and you are migrating an AnyDb database to SAP S/4HANA.
  final int targetHanaRamSizeGB;
  /// Provide the total disk IOPS capacity. Add the disk volume for each individual disk and provide the sum total in this field.
  final int totalDiskIops;
  /// Provide the total disk volume capacity in GB. Add the disk volume for each individual disks and provide the total sum in this field.
  final int totalDiskSizeGB;

  /// Creates a new [ConfigurationDataResponse].
  /// [cpu] Provide the CPU value of the server. For example, 16, 32 etc.
  /// [cpuInMhz] Provide the CPU clock speed of the server in MHz. This should be a non-zero value. For example, 2100.
  /// [cpuType] Provide the CPU architecture type of the server. For example, Xeon Platinum 8171M, Xeon E5-2673 v3.
  /// [databaseType] The database of this is a server instance. Applicable only if SAP instance type for this server instance is 'DB'.
  /// [hardwareManufacturer] Provide the HW manufacturer company of the server.  For example, Microsoft Corporation.
  /// [model] Specify if the Hardware is a physical server or virtual machine.
  /// [ram] Provide the RAM of the server. This should be a non-zero value. For example, 256.
  /// [saps] Provide the SAPS for each server of the SAP system. This should be a non-zero value. For example, 1000.
  /// [targetHanaRamSizeGB] Provide the target HANA database size you need. Applicable only if SAP instance type for this server instance is 'DB' and you are migrating an AnyDb database to SAP S/4HANA.
  /// [totalDiskIops] Provide the total disk IOPS capacity. Add the disk volume for each individual disk and provide the sum total in this field.
  /// [totalDiskSizeGB] Provide the total disk volume capacity in GB. Add the disk volume for each individual disks and provide the total sum in this field.
  ConfigurationDataResponse({
    required this.cpu,
    required this.cpuInMhz,
    required this.cpuType,
    required this.databaseType,
    required this.hardwareManufacturer,
    required this.model,
    required this.ram,
    required this.saps,
    required this.targetHanaRamSizeGB,
    required this.totalDiskIops,
    required this.totalDiskSizeGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'cpuInMhz': cpuInMhz,
      'cpuType': cpuType,
      'databaseType': databaseType,
      'hardwareManufacturer': hardwareManufacturer,
      'model': model,
      'ram': ram,
      'saps': saps,
      'targetHanaRamSizeGB': targetHanaRamSizeGB,
      'totalDiskIops': totalDiskIops,
      'totalDiskSizeGB': totalDiskSizeGB,
    };
  }

  factory ConfigurationDataResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationDataResponse(
      cpu: map['cpu'] as int,
      cpuInMhz: map['cpuInMhz'] as int,
      cpuType: map['cpuType'] as String,
      databaseType: map['databaseType'] as String,
      hardwareManufacturer: map['hardwareManufacturer'] as String,
      model: map['model'] as String,
      ram: map['ram'] as int,
      saps: map['saps'] as int,
      targetHanaRamSizeGB: map['targetHanaRamSizeGB'] as int,
      totalDiskIops: map['totalDiskIops'] as int,
      totalDiskSizeGB: map['totalDiskSizeGB'] as int,
    );
  }
}

