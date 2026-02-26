// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_listener_connection_pool/get_virtual_node_spec_listener_connection_pool.dart';
import '../get_virtual_node_spec_listener_health_check/get_virtual_node_spec_listener_health_check.dart';
import '../get_virtual_node_spec_listener_outlier_detection/get_virtual_node_spec_listener_outlier_detection.dart';
import '../get_virtual_node_spec_listener_port_mapping/get_virtual_node_spec_listener_port_mapping.dart';
import '../get_virtual_node_spec_listener_timeout/get_virtual_node_spec_listener_timeout.dart';
import '../get_virtual_node_spec_listener_tl/get_virtual_node_spec_listener_tl.dart';

class GetVirtualNodeSpecListener {
  final List<GetVirtualNodeSpecListenerConnectionPool> connectionPools;
  final List<GetVirtualNodeSpecListenerHealthCheck> healthChecks;
  final List<GetVirtualNodeSpecListenerOutlierDetection> outlierDetections;
  final List<GetVirtualNodeSpecListenerPortMapping> portMappings;
  final List<GetVirtualNodeSpecListenerTimeout> timeouts;
  final List<GetVirtualNodeSpecListenerTl> tls;

  GetVirtualNodeSpecListener({
    required this.connectionPools,
    required this.healthChecks,
    required this.outlierDetections,
    required this.portMappings,
    required this.timeouts,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionPools'] = Input.encodeList<
        GetVirtualNodeSpecListenerConnectionPool,
        Map<String, dynamic>>(connectionPools, (value) => value.toMap());
    map['healthChecks'] = Input.encodeList<
        GetVirtualNodeSpecListenerHealthCheck,
        Map<String, dynamic>>(healthChecks, (value) => value.toMap());
    map['outlierDetections'] = Input.encodeList<
        GetVirtualNodeSpecListenerOutlierDetection,
        Map<String, dynamic>>(outlierDetections, (value) => value.toMap());
    map['portMappings'] = Input.encodeList<
        GetVirtualNodeSpecListenerPortMapping,
        Map<String, dynamic>>(portMappings, (value) => value.toMap());
    map['timeouts'] = Input.encodeList<GetVirtualNodeSpecListenerTimeout,
        Map<String, dynamic>>(timeouts, (value) => value.toMap());
    map['tls'] =
        Input.encodeList<GetVirtualNodeSpecListenerTl, Map<String, dynamic>>(
            tls, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListener.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListener(
      connectionPools:
          Input.decodeList<GetVirtualNodeSpecListenerConnectionPool>(
              map['connectionPools'],
              (value) => GetVirtualNodeSpecListenerConnectionPool.fromMap(
                  (value as Map).cast<String, dynamic>())),
      healthChecks: Input.decodeList<GetVirtualNodeSpecListenerHealthCheck>(
          map['healthChecks'],
          (value) => GetVirtualNodeSpecListenerHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      outlierDetections:
          Input.decodeList<GetVirtualNodeSpecListenerOutlierDetection>(
              map['outlierDetections'],
              (value) => GetVirtualNodeSpecListenerOutlierDetection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      portMappings: Input.decodeList<GetVirtualNodeSpecListenerPortMapping>(
          map['portMappings'],
          (value) => GetVirtualNodeSpecListenerPortMapping.fromMap(
              (value as Map).cast<String, dynamic>())),
      timeouts: Input.decodeList<GetVirtualNodeSpecListenerTimeout>(
          map['timeouts'],
          (value) => GetVirtualNodeSpecListenerTimeout.fromMap(
              (value as Map).cast<String, dynamic>())),
      tls: Input.decodeList<GetVirtualNodeSpecListenerTl>(
          map['tls'],
          (value) => GetVirtualNodeSpecListenerTl.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
