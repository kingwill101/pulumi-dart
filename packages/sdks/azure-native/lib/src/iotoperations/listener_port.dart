// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_cert_method.dart';

/// Defines a TCP port on which a `BrokerListener` listens.
class ListenerPort {
  /// Reference to client authentication settings. Omit to disable authentication.
  final pulumi.Input<String?>? authenticationRef;
  /// Reference to client authorization settings. Omit to disable authorization.
  final pulumi.Input<String?>? authorizationRef;
  /// Kubernetes node port. Only relevant when this port is associated with a `NodePort` listener.
  final pulumi.Input<int?>? nodePort;
  /// TCP port for accepting client connections.
  final pulumi.Input<int> port;
  /// Protocol to use for client connections.
  final pulumi.Input<dynamic>? protocol;
  /// TLS server certificate settings for this port. Omit to disable TLS.
  final pulumi.Input<TlsCertMethod?>? tls;

  /// Creates a new [ListenerPort].
  /// [authenticationRef] Reference to client authentication settings. Omit to disable authentication.
  /// [authorizationRef] Reference to client authorization settings. Omit to disable authorization.
  /// [nodePort] Kubernetes node port. Only relevant when this port is associated with a `NodePort` listener.
  /// [port] TCP port for accepting client connections.
  /// [protocol] Protocol to use for client connections.
  /// [tls] TLS server certificate settings for this port. Omit to disable TLS.
  ListenerPort({
    this.authenticationRef,
    this.authorizationRef,
    this.nodePort,
    required this.port,
    pulumi.Input<dynamic>? protocol,
    this.tls,
  }) : protocol = protocol ?? pulumi.Input.fromValue('Mqtt');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRef': ?authenticationRef,
      'authorizationRef': ?authorizationRef,
      'nodePort': ?nodePort,
      'port': port,
      'protocol': ?protocol,
      'tls': ?pulumi.Input.mapOptionalInputValue<TlsCertMethod, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory ListenerPort.fromMap(Map<String, dynamic> map) {
    return ListenerPort(
      authenticationRef: (() { final guardedValue = map['authenticationRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationRef: (() { final guardedValue = map['authorizationRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePort: (() { final guardedValue = map['nodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsCertMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
