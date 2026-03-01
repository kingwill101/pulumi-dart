// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_parallel_acpi.dart';
import 'domain_devices_parallel_alias.dart';
import 'domain_devices_parallel_log.dart';
import 'domain_devices_parallel_protocol.dart';
import 'domain_devices_parallel_source.dart';
import 'domain_devices_parallel_target.dart';

class DomainDevicesParallel {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesParallelAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesParallelAlias? alias;
  /// Specifies the logging options for the channel configuration.
  final DomainDevicesParallelLog? log;
  /// Sets the protocol type for the EGD backend.
  final DomainDevicesParallelProtocol? protocol;
  /// Defines the source settings for the EGD backend.
  final DomainDevicesParallelSource? source;
  /// Defines the target configuration for the parallel device settings within the domain.
  final DomainDevicesParallelTarget? target;

  /// Creates a new [DomainDevicesParallel].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [log] Specifies the logging options for the channel configuration.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  /// [target] Defines the target configuration for the parallel device settings within the domain.
  DomainDevicesParallel({
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

  factory DomainDevicesParallel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallel(
      acpi: map['acpi'] == null ? null : DomainDevicesParallelAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesParallelAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      log: map['log'] == null ? null : DomainDevicesParallelLog.fromMap((map['log'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : DomainDevicesParallelProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesParallelSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DomainDevicesParallelTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

