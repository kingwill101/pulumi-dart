// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_client_local.dart';

class DomainDevicesInterfaceSourceClient {
  /// Specifies the address of the client for the network interface.
  final String? address;
  /// Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  final DomainDevicesInterfaceSourceClientLocal? local;
  /// Specifies the port for the client source of the network interface.
  final double? port;

  /// Creates a new [DomainDevicesInterfaceSourceClient].
  /// [address] Specifies the address of the client for the network interface.
  /// [local] Controls local UDP settings for the network interface, managing configurations for local UDP traffic.
  /// [port] Specifies the port for the client source of the network interface.
  DomainDevicesInterfaceSourceClient({
    this.address,
    this.local,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'local': ?local == null ? null : local!.toMap(),
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceClient.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceClient(
      address: map['address'] == null ? null : map['address'] as String,
      local: map['local'] == null ? null : DomainDevicesInterfaceSourceClientLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

