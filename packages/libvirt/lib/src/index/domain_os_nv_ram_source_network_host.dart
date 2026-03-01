// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceNetworkHost {
  /// Defines the name of the iSCSI host for the source configuration.
  final String? name;
  /// Specifies the port number for the iSCSI host connection.
  final String? port;
  /// Sets the socket configuration for the iSCSI host connection.
  final String? socket;
  /// Specifies the transport method used for the iSCSI host connection.
  final String? transport;

  /// Creates a new [DomainOsNvRamSourceNetworkHost].
  /// [name] Defines the name of the iSCSI host for the source configuration.
  /// [port] Specifies the port number for the iSCSI host connection.
  /// [socket] Sets the socket configuration for the iSCSI host connection.
  /// [transport] Specifies the transport method used for the iSCSI host connection.
  DomainOsNvRamSourceNetworkHost({
    this.name,
    this.port,
    this.socket,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'port': ?port,
      'socket': ?socket,
      'transport': ?transport,
    };
  }

  factory DomainOsNvRamSourceNetworkHost.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkHost(
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      socket: map['socket'] == null ? null : map['socket'] as String,
      transport: map['transport'] == null ? null : map['transport'] as String,
    );
  }
}

