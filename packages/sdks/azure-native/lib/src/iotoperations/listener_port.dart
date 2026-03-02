// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_cert_method.dart';

/// Defines a TCP port on which a `BrokerListener` listens.
class ListenerPort {
  /// Reference to client authentication settings. Omit to disable authentication.
  final pulumi.Input<String>? authenticationRef;
  /// Reference to client authorization settings. Omit to disable authorization.
  final pulumi.Input<String>? authorizationRef;
  /// Kubernetes node port. Only relevant when this port is associated with a `NodePort` listener.
  final pulumi.Input<int>? nodePort;
  /// TCP port for accepting client connections.
  final pulumi.Input<int> port;
  /// Protocol to use for client connections.
  final pulumi.Input<String>? protocol;
  /// TLS server certificate settings for this port. Omit to disable TLS.
  final pulumi.Input<TlsCertMethod>? tls;

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
    this.protocol,
    this.tls,
  });

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
      authenticationRef: map['authenticationRef'] == null ? null : (map['authenticationRef']! as String).input(),
      authorizationRef: map['authorizationRef'] == null ? null : (map['authorizationRef']! as String).input(),
      nodePort: map['nodePort'] == null ? null : (map['nodePort']! as int).input(),
      port: (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      tls: map['tls'] == null ? null : (TlsCertMethod.fromMap((map['tls']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

