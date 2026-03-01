// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_pstore_acpi.dart';
import 'domain_devices_pstore_alias.dart';

class DomainDevicesPstore {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesPstoreAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesPstoreAlias? alias;
  /// Defines the backend type of the persistent storage device, determining its underlying implementation.
  final String backend;
  /// Specifies the file path for where the persistent store data will be written on the host.
  final String path;
  /// Configures the size of the persistent storage device, determining its capacity for storing logs and states.
  final double size;
  /// Sets the unit of measurement for the size of the persistent storage device, indicating its size metric.
  final String? sizeUnit;

  /// Creates a new [DomainDevicesPstore].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Defines the backend type of the persistent storage device, determining its underlying implementation.
  /// [path] Specifies the file path for where the persistent store data will be written on the host.
  /// [size] Configures the size of the persistent storage device, determining its capacity for storing logs and states.
  /// [sizeUnit] Sets the unit of measurement for the size of the persistent storage device, indicating its size metric.
  DomainDevicesPstore({
    this.acpi,
    this.address,
    this.alias,
    required this.backend,
    required this.path,
    required this.size,
    this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'backend': backend,
      'path': path,
      'size': size,
      'sizeUnit': ?sizeUnit,
    };
  }

  factory DomainDevicesPstore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPstore(
      acpi: map['acpi'] == null ? null : DomainDevicesPstoreAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesPstoreAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      backend: map['backend'] as String,
      path: map['path'] as String,
      size: map['size'] as double,
      sizeUnit: map['sizeUnit'] == null ? null : map['sizeUnit'] as String,
    );
  }
}

