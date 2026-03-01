// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_watchdog_acpi.dart';
import 'domain_devices_watchdog_alias.dart';

class DomainDevicesWatchdog {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesWatchdogAcpi? acpi;
  /// Defines the action that the watchdog device should take when its timeout period expires, such as resetting the virtual machine or performing a graceful shutdown.
  final String? action;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesWatchdogAlias? alias;
  /// Configures the model of the watchdog device, which dictates its underlying functionality and behavior in the domain.
  final String model;

  /// Creates a new [DomainDevicesWatchdog].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [action] Defines the action that the watchdog device should take when its timeout period expires, such as resetting the virtual machine or performing a graceful shutdown.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [model] Configures the model of the watchdog device, which dictates its underlying functionality and behavior in the domain.
  DomainDevicesWatchdog({
    this.acpi,
    this.action,
    this.address,
    this.alias,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'action': ?action,
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'model': model,
    };
  }

  factory DomainDevicesWatchdog.fromMap(Map<String, dynamic> map) {
    return DomainDevicesWatchdog(
      acpi: map['acpi'] == null ? null : DomainDevicesWatchdogAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      action: map['action'] == null ? null : map['action'] as String,
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesWatchdogAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      model: map['model'] as String,
    );
  }
}

