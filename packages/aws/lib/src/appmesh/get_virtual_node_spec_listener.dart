// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_connection_pool.dart';
import 'get_virtual_node_spec_listener_health_check.dart';
import 'get_virtual_node_spec_listener_outlier_detection.dart';
import 'get_virtual_node_spec_listener_port_mapping.dart';
import 'get_virtual_node_spec_listener_timeout.dart';
import 'get_virtual_node_spec_listener_tl.dart';

class GetVirtualNodeSpecListener {
  final List<GetVirtualNodeSpecListenerConnectionPool> connectionPools;
  final List<GetVirtualNodeSpecListenerHealthCheck> healthChecks;
  final List<GetVirtualNodeSpecListenerOutlierDetection> outlierDetections;
  final List<GetVirtualNodeSpecListenerPortMapping> portMappings;
  final List<GetVirtualNodeSpecListenerTimeout> timeouts;
  final List<GetVirtualNodeSpecListenerTl> tls;

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
      'connectionPools':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerConnectionPool,
            Map<String, dynamic>
          >(connectionPools, (value) => value.toMap()),
      'healthChecks':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerHealthCheck,
            Map<String, dynamic>
          >(healthChecks, (value) => value.toMap()),
      'outlierDetections':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerOutlierDetection,
            Map<String, dynamic>
          >(outlierDetections, (value) => value.toMap()),
      'portMappings':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerPortMapping,
            Map<String, dynamic>
          >(portMappings, (value) => value.toMap()),
      'timeouts':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerTimeout,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'tls':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerTl,
            Map<String, dynamic>
          >(tls, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecListener.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListener(
      connectionPools:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPool>(
            map['connectionPools'],
            (value) => GetVirtualNodeSpecListenerConnectionPool.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      healthChecks:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerHealthCheck>(
            map['healthChecks'],
            (value) => GetVirtualNodeSpecListenerHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      outlierDetections:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerOutlierDetection>(
            map['outlierDetections'],
            (value) => GetVirtualNodeSpecListenerOutlierDetection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      portMappings:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerPortMapping>(
            map['portMappings'],
            (value) => GetVirtualNodeSpecListenerPortMapping.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      timeouts: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeout>(
        map['timeouts'],
        (value) => GetVirtualNodeSpecListenerTimeout.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tls: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTl>(
        map['tls'],
        (value) => GetVirtualNodeSpecListenerTl.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
