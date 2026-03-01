// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_redir_dev_acpi.dart';
import 'domain_devices_redir_dev_alias.dart';
import 'domain_devices_redir_dev_boot.dart';
import 'domain_devices_redir_dev_protocol.dart';
import 'domain_devices_redir_dev_source.dart';

class DomainDevicesRedirDev {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesRedirDevAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesRedirDevAlias? alias;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final DomainDevicesRedirDevBoot? boot;
  /// Defines the bus type for the redirected device, determining how it interacts with the guest's bus architecture.
  final String? bus;
  /// Sets the protocol type for the EGD backend.
  final DomainDevicesRedirDevProtocol? protocol;
  /// Defines the source settings for the EGD backend.
  final DomainDevicesRedirDevSource? source;

  /// Creates a new [DomainDevicesRedirDev].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [bus] Defines the bus type for the redirected device, determining how it interacts with the guest's bus architecture.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  DomainDevicesRedirDev({
    this.acpi,
    this.address,
    this.alias,
    this.boot,
    this.bus,
    this.protocol,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'boot': ?boot == null ? null : boot!.toMap(),
      'bus': ?bus,
      'protocol': ?protocol == null ? null : protocol!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesRedirDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDev(
      acpi: map['acpi'] == null ? null : DomainDevicesRedirDevAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesRedirDevAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      boot: map['boot'] == null ? null : DomainDevicesRedirDevBoot.fromMap((map['boot'] as Map).cast<String, dynamic>()),
      bus: map['bus'] == null ? null : map['bus'] as String,
      protocol: map['protocol'] == null ? null : DomainDevicesRedirDevProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesRedirDevSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

