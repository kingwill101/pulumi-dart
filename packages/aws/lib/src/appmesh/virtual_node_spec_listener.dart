// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_connection_pool.dart';
import 'virtual_node_spec_listener_health_check.dart';
import 'virtual_node_spec_listener_outlier_detection.dart';
import 'virtual_node_spec_listener_port_mapping.dart';
import 'virtual_node_spec_listener_timeout.dart';
import 'virtual_node_spec_listener_tls.dart';

class VirtualNodeSpecListener {
  /// Connection pool information for the listener.
  final VirtualNodeSpecListenerConnectionPool? connectionPool;
  /// Health check information for the listener.
  final VirtualNodeSpecListenerHealthCheck? healthCheck;
  /// Outlier detection information for the listener.
  final VirtualNodeSpecListenerOutlierDetection? outlierDetection;
  /// Port mapping information for the listener.
  final VirtualNodeSpecListenerPortMapping portMapping;
  /// Timeouts for different protocols.
  final VirtualNodeSpecListenerTimeout? timeout;
  /// Transport Layer Security (TLS) properties for the listener
  final VirtualNodeSpecListenerTls? tls;

  /// Creates a new [VirtualNodeSpecListener].
  /// [connectionPool] Connection pool information for the listener.
  /// [healthCheck] Health check information for the listener.
  /// [outlierDetection] Outlier detection information for the listener.
  /// [portMapping] Port mapping information for the listener.
  /// [timeout] Timeouts for different protocols.
  /// [tls] Transport Layer Security (TLS) properties for the listener
  VirtualNodeSpecListener({
    this.connectionPool,
    this.healthCheck,
    this.outlierDetection,
    required this.portMapping,
    this.timeout,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPool': ?connectionPool == null ? null : connectionPool!.toMap(),
      'healthCheck': ?healthCheck == null ? null : healthCheck!.toMap(),
      'outlierDetection': ?outlierDetection == null ? null : outlierDetection!.toMap(),
      'portMapping': portMapping.toMap(),
      'timeout': ?timeout == null ? null : timeout!.toMap(),
      'tls': ?tls == null ? null : tls!.toMap(),
    };
  }

  factory VirtualNodeSpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListener(
      connectionPool: map['connectionPool'] == null ? null : VirtualNodeSpecListenerConnectionPool.fromMap((map['connectionPool'] as Map).cast<String, dynamic>()),
      healthCheck: map['healthCheck'] == null ? null : VirtualNodeSpecListenerHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>()),
      outlierDetection: map['outlierDetection'] == null ? null : VirtualNodeSpecListenerOutlierDetection.fromMap((map['outlierDetection'] as Map).cast<String, dynamic>()),
      portMapping: VirtualNodeSpecListenerPortMapping.fromMap((map['portMapping'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : VirtualNodeSpecListenerTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null ? null : VirtualNodeSpecListenerTls.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

