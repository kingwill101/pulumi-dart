// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_cert_method_response.dart';

/// Defines a TCP port on which a `BrokerListener` listens.
class ListenerPortResponse {
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
  final pulumi.Input<TlsCertMethodResponse>? tls;

  /// Creates a new [ListenerPortResponse].
  /// [authenticationRef] Reference to client authentication settings. Omit to disable authentication.
  /// [authorizationRef] Reference to client authorization settings. Omit to disable authorization.
  /// [nodePort] Kubernetes node port. Only relevant when this port is associated with a `NodePort` listener.
  /// [port] TCP port for accepting client connections.
  /// [protocol] Protocol to use for client connections.
  /// [tls] TLS server certificate settings for this port. Omit to disable TLS.
  ListenerPortResponse({
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
      'tls': ?pulumi.Input.mapOptionalInputValue<TlsCertMethodResponse, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory ListenerPortResponse.fromMap(Map<String, dynamic> map) {
    return ListenerPortResponse(
      authenticationRef: map['authenticationRef'] == null ? null : (map['authenticationRef']! as String).input(),
      authorizationRef: map['authorizationRef'] == null ? null : (map['authorizationRef']! as String).input(),
      nodePort: map['nodePort'] == null ? null : (map['nodePort']! as int).input(),
      port: (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      tls: map['tls'] == null ? null : (TlsCertMethodResponse.fromMap((map['tls']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

