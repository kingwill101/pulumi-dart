// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_node_spec_listener_connection_pool/virtual_node_spec_listener_connection_pool.dart';
import '../virtual_node_spec_listener_health_check/virtual_node_spec_listener_health_check.dart';
import '../virtual_node_spec_listener_outlier_detection/virtual_node_spec_listener_outlier_detection.dart';
import '../virtual_node_spec_listener_port_mapping/virtual_node_spec_listener_port_mapping.dart';
import '../virtual_node_spec_listener_timeout/virtual_node_spec_listener_timeout.dart';
import '../virtual_node_spec_listener_tls/virtual_node_spec_listener_tls.dart';

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

  VirtualNodeSpecListener({
    this.connectionPool,
    this.healthCheck,
    this.outlierDetection,
    required this.portMapping,
    this.timeout,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPoolValue = connectionPool;
    if (connectionPoolValue != null) {
      map['connectionPool'] = connectionPoolValue.toMap();
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue.toMap();
    }
    final outlierDetectionValue = outlierDetection;
    if (outlierDetectionValue != null) {
      map['outlierDetection'] = outlierDetectionValue.toMap();
    }
    map['portMapping'] = portMapping.toMap();
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue.toMap();
    }
    final tlsValue = tls;
    if (tlsValue != null) {
      map['tls'] = tlsValue.toMap();
    }
    return map;
  }

  factory VirtualNodeSpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListener(
      connectionPool: map['connectionPool'] == null
          ? null
          : VirtualNodeSpecListenerConnectionPool.fromMap(
              (map['connectionPool'] as Map).cast<String, dynamic>()),
      healthCheck: map['healthCheck'] == null
          ? null
          : VirtualNodeSpecListenerHealthCheck.fromMap(
              (map['healthCheck'] as Map).cast<String, dynamic>()),
      outlierDetection: map['outlierDetection'] == null
          ? null
          : VirtualNodeSpecListenerOutlierDetection.fromMap(
              (map['outlierDetection'] as Map).cast<String, dynamic>()),
      portMapping: VirtualNodeSpecListenerPortMapping.fromMap(
          (map['portMapping'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null
          ? null
          : VirtualNodeSpecListenerTimeout.fromMap(
              (map['timeout'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null
          ? null
          : VirtualNodeSpecListenerTls.fromMap(
              (map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}
