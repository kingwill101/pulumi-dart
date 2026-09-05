// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_connection_pool.dart';
import 'get_virtual_node_spec_listener_health_check.dart';
import 'get_virtual_node_spec_listener_outlier_detection.dart';
import 'get_virtual_node_spec_listener_port_mapping.dart';
import 'get_virtual_node_spec_listener_timeout.dart';
import 'get_virtual_node_spec_listener_tl.dart';

class GetVirtualNodeSpecListener {
  /// Connection pool information for the listener. See `spec.listener.connection_pool` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerConnectionPool>> connectionPools;
  /// Health check information for the listener. See `spec.listener.health_check` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerHealthCheck>> healthChecks;
  /// Outlier detection information for the listener. See `spec.listener.outlier_detection` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerOutlierDetection>> outlierDetections;
  /// Port mapping information for the listener. See `spec.listener.port_mapping` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerPortMapping>> portMappings;
  /// Timeouts for different protocols. See `spec.listener.timeout` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeout>> timeouts;
  /// TLS properties for the listener. See `spec.listener.tls` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTl>> tls;

  /// Creates a new [GetVirtualNodeSpecListener].
  /// [connectionPools] Connection pool information for the listener. See `spec.listener.connection_pool` Block for details.
  /// [healthChecks] Health check information for the listener. See `spec.listener.health_check` Block for details.
  /// [outlierDetections] Outlier detection information for the listener. See `spec.listener.outlier_detection` Block for details.
  /// [portMappings] Port mapping information for the listener. See `spec.listener.port_mapping` Block for details.
  /// [timeouts] Timeouts for different protocols. See `spec.listener.timeout` Block for details.
  /// [tls] TLS properties for the listener. See `spec.listener.tls` Block for details.
  const GetVirtualNodeSpecListener({
    required this.connectionPools,
    required this.healthChecks,
    required this.outlierDetections,
    required this.portMappings,
    required this.timeouts,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPools': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerConnectionPool>, List<Map<String, dynamic>>>(connectionPools, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerConnectionPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthChecks': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerHealthCheck>, List<Map<String, dynamic>>>(healthChecks, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerHealthCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outlierDetections': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerOutlierDetection>, List<Map<String, dynamic>>>(outlierDetections, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerOutlierDetection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portMappings': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerPortMapping>, List<Map<String, dynamic>>>(portMappings, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerPortMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeout>, List<Map<String, dynamic>>>(timeouts, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tls': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTl>, List<Map<String, dynamic>>>(tls, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListener.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListener(
      connectionPools: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPool>(map['connectionPools']!, (value) => GetVirtualNodeSpecListenerConnectionPool.fromMap((value as Map).cast<String, dynamic>()))),
      healthChecks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerHealthCheck>(map['healthChecks']!, (value) => GetVirtualNodeSpecListenerHealthCheck.fromMap((value as Map).cast<String, dynamic>()))),
      outlierDetections: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerOutlierDetection>(map['outlierDetections']!, (value) => GetVirtualNodeSpecListenerOutlierDetection.fromMap((value as Map).cast<String, dynamic>()))),
      portMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerPortMapping>(map['portMappings']!, (value) => GetVirtualNodeSpecListenerPortMapping.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeout>(map['timeouts']!, (value) => GetVirtualNodeSpecListenerTimeout.fromMap((value as Map).cast<String, dynamic>()))),
      tls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTl>(map['tls']!, (value) => GetVirtualNodeSpecListenerTl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
