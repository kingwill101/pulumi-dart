// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_vhost_user_chardev_tcp_reconnect.dart';

class DomainDevicesInterfaceSourceVhostUserChardevTcp {
  /// Sets the host address for the TCP connection in the random number generator backend.
  final String? host;
  /// Specifies the operation mode for TCP in the random number generator backend.
  final String? mode;
  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final DomainDevicesInterfaceSourceVhostUserChardevTcpReconnect? reconnect;
  /// Defines the service attribute for the TCP connection in the random number generator backend.
  final String? service;
  /// Enables or disables TLS encryption for the TCP connection in the backend.
  final String? tls;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevTcp].
  /// [host] Sets the host address for the TCP connection in the random number generator backend.
  /// [mode] Specifies the operation mode for TCP in the random number generator backend.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [service] Defines the service attribute for the TCP connection in the random number generator backend.
  /// [tls] Enables or disables TLS encryption for the TCP connection in the backend.
  DomainDevicesInterfaceSourceVhostUserChardevTcp({
    this.host,
    this.mode,
    this.reconnect,
    this.service,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'mode': ?mode,
      'reconnect': ?reconnect == null ? null : reconnect!.toMap(),
      'service': ?service,
      'tls': ?tls,
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevTcp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevTcp(
      host: map['host'] == null ? null : map['host'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      reconnect: map['reconnect'] == null ? null : DomainDevicesInterfaceSourceVhostUserChardevTcpReconnect.fromMap((map['reconnect'] as Map).cast<String, dynamic>()),
      service: map['service'] == null ? null : map['service'] as String,
      tls: map['tls'] == null ? null : map['tls'] as String,
    );
  }
}

