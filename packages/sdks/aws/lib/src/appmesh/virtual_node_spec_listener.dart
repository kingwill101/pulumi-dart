// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_connection_pool.dart';
import 'virtual_node_spec_listener_health_check.dart';
import 'virtual_node_spec_listener_outlier_detection.dart';
import 'virtual_node_spec_listener_port_mapping.dart';
import 'virtual_node_spec_listener_timeout.dart';
import 'virtual_node_spec_listener_tls.dart';

class VirtualNodeSpecListener {
  /// Connection pool information for the listener.
  final pulumi.Input<VirtualNodeSpecListenerConnectionPool>? connectionPool;
  /// Health check information for the listener.
  final pulumi.Input<VirtualNodeSpecListenerHealthCheck>? healthCheck;
  /// Outlier detection information for the listener.
  final pulumi.Input<VirtualNodeSpecListenerOutlierDetection>? outlierDetection;
  /// Port mapping information for the listener.
  final pulumi.Input<VirtualNodeSpecListenerPortMapping> portMapping;
  /// Timeouts for different protocols.
  final pulumi.Input<VirtualNodeSpecListenerTimeout>? timeout;
  /// Transport Layer Security (TLS) properties for the listener
  final pulumi.Input<VirtualNodeSpecListenerTls>? tls;

  /// Creates a new [VirtualNodeSpecListener].
  /// [connectionPool] Connection pool information for the listener.
  /// [healthCheck] Health check information for the listener.
  /// [outlierDetection] Outlier detection information for the listener.
  /// [portMapping] Port mapping information for the listener.
  /// [timeout] Timeouts for different protocols.
  /// [tls] Transport Layer Security (TLS) properties for the listener
  const VirtualNodeSpecListener({
    this.connectionPool,
    this.healthCheck,
    this.outlierDetection,
    required this.portMapping,
    this.timeout,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPool': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerConnectionPool, Map<String, dynamic>>(connectionPool, (value) => value.toMap()),
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'outlierDetection': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerOutlierDetection, Map<String, dynamic>>(outlierDetection, (value) => value.toMap()),
      'portMapping': pulumi.Input.mapInputValue<VirtualNodeSpecListenerPortMapping, Map<String, dynamic>>(portMapping, (value) => value.toMap()),
      'timeout': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'tls': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListener(
      connectionPool: (() { final guardedValue = map['connectionPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerConnectionPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outlierDetection: (() { final guardedValue = map['outlierDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerOutlierDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portMapping: pulumi.Input.fromValue(VirtualNodeSpecListenerPortMapping.fromMap((map['portMapping']! as Map).cast<String, dynamic>())),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

