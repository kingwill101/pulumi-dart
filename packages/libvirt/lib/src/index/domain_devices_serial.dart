// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_serial_acpi.dart';
import 'domain_devices_serial_alias.dart';
import 'domain_devices_serial_log.dart';
import 'domain_devices_serial_protocol.dart';
import 'domain_devices_serial_source.dart';
import 'domain_devices_serial_target.dart';

class DomainDevicesSerial {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesSerialAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesSerialAlias? alias;
  /// Specifies the logging options for the channel configuration.
  final DomainDevicesSerialLog? log;
  /// Sets the protocol type for the EGD backend.
  final DomainDevicesSerialProtocol? protocol;
  /// Defines the source settings for the EGD backend.
  final DomainDevicesSerialSource? source;
  /// Configures the target settings for the serial device, specifying where output is directed.
  final DomainDevicesSerialTarget? target;

  /// Creates a new [DomainDevicesSerial].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [log] Specifies the logging options for the channel configuration.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  /// [target] Configures the target settings for the serial device, specifying where output is directed.
  DomainDevicesSerial({
    this.acpi,
    this.address,
    this.alias,
    this.log,
    this.protocol,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'log': ?log == null ? null : log!.toMap(),
      'protocol': ?protocol == null ? null : protocol!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory DomainDevicesSerial.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerial(
      acpi: map['acpi'] == null ? null : DomainDevicesSerialAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesSerialAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      log: map['log'] == null ? null : DomainDevicesSerialLog.fromMap((map['log'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : DomainDevicesSerialProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesSerialSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DomainDevicesSerialTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

