// ignore_for_file: unused_element, unnecessary_cast

import 'cert.dart';
import 'port_mapping.dart';

/// Binding for a web application.
class Binding {
  /// WebApplication certificate.
  final Cert? cert;
  /// Gets or sets the binding host name.
  final String? hostName;
  /// Gets or sets the IP Address.
  final String? ipAddress;
  /// Gets or sets the application port.
  final String? port;
  /// WebApplication port mapping.
  final PortMapping? portMapping;
  /// Gets or sets the protocol.
  final String? protocol;

  /// Creates a new [Binding].
  /// [cert] WebApplication certificate.
  /// [hostName] Gets or sets the binding host name.
  /// [ipAddress] Gets or sets the IP Address.
  /// [port] Gets or sets the application port.
  /// [portMapping] WebApplication port mapping.
  /// [protocol] Gets or sets the protocol.
  Binding({
    this.cert,
    this.hostName,
    this.ipAddress,
    this.port,
    this.portMapping,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert == null ? null : cert!.toMap(),
      'hostName': ?hostName,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'portMapping': ?portMapping == null ? null : portMapping!.toMap(),
      'protocol': ?protocol,
    };
  }

  factory Binding.fromMap(Map<String, dynamic> map) {
    return Binding(
      cert: map['cert'] == null ? null : Cert.fromMap((map['cert'] as Map).cast<String, dynamic>()),
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      portMapping: map['portMapping'] == null ? null : PortMapping.fromMap((map['portMapping'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

