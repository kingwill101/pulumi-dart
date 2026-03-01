// ignore_for_file: unused_element, unnecessary_cast

import 'tls_cert_method_response.dart';

/// Defines a TCP port on which a `BrokerListener` listens.
class ListenerPortResponse {
  /// Reference to client authentication settings. Omit to disable authentication.
  final String? authenticationRef;
  /// Reference to client authorization settings. Omit to disable authorization.
  final String? authorizationRef;
  /// Kubernetes node port. Only relevant when this port is associated with a `NodePort` listener.
  final int? nodePort;
  /// TCP port for accepting client connections.
  final int port;
  /// Protocol to use for client connections.
  final String? protocol;
  /// TLS server certificate settings for this port. Omit to disable TLS.
  final TlsCertMethodResponse? tls;

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
      'tls': ?tls == null ? null : tls!.toMap(),
    };
  }

  factory ListenerPortResponse.fromMap(Map<String, dynamic> map) {
    return ListenerPortResponse(
      authenticationRef: map['authenticationRef'] == null ? null : map['authenticationRef'] as String,
      authorizationRef: map['authorizationRef'] == null ? null : map['authorizationRef'] as String,
      nodePort: map['nodePort'] == null ? null : map['nodePort'] as int,
      port: map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      tls: map['tls'] == null ? null : TlsCertMethodResponse.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

