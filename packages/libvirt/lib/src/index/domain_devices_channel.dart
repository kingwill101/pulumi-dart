// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_channel_acpi.dart';
import 'domain_devices_channel_alias.dart';
import 'domain_devices_channel_log.dart';
import 'domain_devices_channel_protocol.dart';
import 'domain_devices_channel_source.dart';
import 'domain_devices_channel_target.dart';

class DomainDevicesChannel {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesChannelAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesChannelAlias? alias;
  /// Specifies the logging options for the channel configuration.
  final DomainDevicesChannelLog? log;
  /// Sets the protocol type for the EGD backend.
  final DomainDevicesChannelProtocol? protocol;
  /// Defines the source settings for the EGD backend.
  final DomainDevicesChannelSource? source;
  /// This field defines the target configuration for the virtual channel.
  final DomainDevicesChannelTarget? target;

  /// Creates a new [DomainDevicesChannel].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [log] Specifies the logging options for the channel configuration.
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  /// [target] This field defines the target configuration for the virtual channel.
  DomainDevicesChannel({
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

  factory DomainDevicesChannel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannel(
      acpi: map['acpi'] == null ? null : DomainDevicesChannelAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesChannelAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      log: map['log'] == null ? null : DomainDevicesChannelLog.fromMap((map['log'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : DomainDevicesChannelProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesChannelSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DomainDevicesChannelTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

