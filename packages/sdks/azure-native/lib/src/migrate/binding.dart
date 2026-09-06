// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert.dart';
import 'port_mapping.dart';

/// Binding for a web application.
class Binding {
  /// WebApplication certificate.
  final pulumi.Input<Cert?>? cert;
  /// Gets or sets the binding host name.
  final pulumi.Input<String?>? hostName;
  /// Gets or sets the IP Address.
  final pulumi.Input<String?>? ipAddress;
  /// Gets or sets the application port.
  final pulumi.Input<String?>? port;
  /// WebApplication port mapping.
  final pulumi.Input<PortMapping?>? portMapping;
  /// Gets or sets the protocol.
  final pulumi.Input<String?>? protocol;

  /// Creates a new [Binding].
  /// [cert] WebApplication certificate.
  /// [hostName] Gets or sets the binding host name.
  /// [ipAddress] Gets or sets the IP Address.
  /// [port] Gets or sets the application port.
  /// [portMapping] WebApplication port mapping.
  /// [protocol] Gets or sets the protocol.
  const Binding({
    this.cert,
    this.hostName,
    this.ipAddress,
    this.port,
    this.portMapping,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?pulumi.Input.mapOptionalInputValue<Cert, Map<String, dynamic>>(cert, (value) => value.toMap()),
      'hostName': ?hostName,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'portMapping': ?pulumi.Input.mapOptionalInputValue<PortMapping, Map<String, dynamic>>(portMapping, (value) => value.toMap()),
      'protocol': ?protocol,
    };
  }

  factory Binding.fromMap(Map<String, dynamic> map) {
    return Binding(
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Cert.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portMapping: (() { final guardedValue = map['portMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortMapping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
