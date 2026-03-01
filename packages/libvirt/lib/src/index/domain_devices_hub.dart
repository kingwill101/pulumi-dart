// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hub_acpi.dart';
import 'domain_devices_hub_alias.dart';

class DomainDevicesHub {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesHubAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesHubAlias? alias;
  /// Indicates the type of hub device being configured.
  final String type;

  /// Creates a new [DomainDevicesHub].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [type] Indicates the type of hub device being configured.
  DomainDevicesHub({
    this.acpi,
    this.address,
    this.alias,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesHub.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHub(
      acpi: map['acpi'] == null ? null : DomainDevicesHubAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesHubAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

