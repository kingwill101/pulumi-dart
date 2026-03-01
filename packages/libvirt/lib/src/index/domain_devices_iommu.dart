// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_iommu_acpi.dart';
import 'domain_devices_iommu_alias.dart';
import 'domain_devices_iommu_driver.dart';

class DomainDevicesIommu {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesIommuAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesIommuAlias? alias;
  /// Specifies the driver settings for the IOMMU device.
  final DomainDevicesIommuDriver? driver;
  /// Sets the model for the IOMMU device, determining its capabilities and behavior.
  final String model;

  /// Creates a new [DomainDevicesIommu].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [driver] Specifies the driver settings for the IOMMU device.
  /// [model] Sets the model for the IOMMU device, determining its capabilities and behavior.
  DomainDevicesIommu({
    this.acpi,
    this.address,
    this.alias,
    this.driver,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'driver': ?driver == null ? null : driver!.toMap(),
      'model': model,
    };
  }

  factory DomainDevicesIommu.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommu(
      acpi: map['acpi'] == null ? null : DomainDevicesIommuAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesIommuAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      driver: map['driver'] == null ? null : DomainDevicesIommuDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      model: map['model'] as String,
    );
  }
}

