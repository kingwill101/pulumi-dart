// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_connection_pool.dart';
import 'get_virtual_node_spec_listener_health_check.dart';
import 'get_virtual_node_spec_listener_outlier_detection.dart';
import 'get_virtual_node_spec_listener_port_mapping.dart';
import 'get_virtual_node_spec_listener_timeout.dart';
import 'get_virtual_node_spec_listener_tl.dart';

class GetVirtualNodeSpecListener {
  final pulumi.Input<List<GetVirtualNodeSpecListenerConnectionPool>> connectionPools;
  final pulumi.Input<List<GetVirtualNodeSpecListenerHealthCheck>> healthChecks;
  final pulumi.Input<List<GetVirtualNodeSpecListenerOutlierDetection>> outlierDetections;
  final pulumi.Input<List<GetVirtualNodeSpecListenerPortMapping>> portMappings;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeout>> timeouts;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTl>> tls;

  /// Creates a new [GetVirtualNodeSpecListener].
  /// [connectionPools] Required.
  /// [healthChecks] Required.
  /// [outlierDetections] Required.
  /// [portMappings] Required.
  /// [timeouts] Required.
  /// [tls] Required.
  GetVirtualNodeSpecListener({
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
      connectionPools: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPool>(map['connectionPools'], (value) => GetVirtualNodeSpecListenerConnectionPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      healthChecks: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerHealthCheck>(map['healthChecks'], (value) => GetVirtualNodeSpecListenerHealthCheck.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outlierDetections: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerOutlierDetection>(map['outlierDetections'], (value) => GetVirtualNodeSpecListenerOutlierDetection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portMappings: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerPortMapping>(map['portMappings'], (value) => GetVirtualNodeSpecListenerPortMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeouts: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeout>(map['timeouts'], (value) => GetVirtualNodeSpecListenerTimeout.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tls: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerTl>(map['tls'], (value) => GetVirtualNodeSpecListenerTl.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

