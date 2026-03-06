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
  const ListenerPortResponse({
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
      authenticationRef: (() { final guardedValue = map['authenticationRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationRef: (() { final guardedValue = map['authorizationRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePort: (() { final guardedValue = map['nodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsCertMethodResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

