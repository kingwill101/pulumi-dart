// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_panic_acpi.dart';
import 'domain_devices_panic_alias.dart';

class DomainDevicesPanic {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesPanicAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesPanicAlias? alias;
  /// Sets the model type for the panic device configuration.
  final String? model;

  /// Creates a new [DomainDevicesPanic].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [model] Sets the model type for the panic device configuration.
  DomainDevicesPanic({
    this.acpi,
    this.address,
    this.alias,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'model': ?model,
    };
  }

  factory DomainDevicesPanic.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPanic(
      acpi: map['acpi'] == null ? null : DomainDevicesPanicAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesPanicAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : map['model'] as String,
    );
  }
}

