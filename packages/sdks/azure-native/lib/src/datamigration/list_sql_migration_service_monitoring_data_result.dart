// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_monitoring_data_response.dart';

/// Result data returned by listSqlMigrationServiceMonitoringData.
class ListSqlMigrationServiceMonitoringDataResult {
  /// The name of Integration Runtime.
  final String name;
  /// Integration Runtime node monitoring data.
  final List<NodeMonitoringDataResponse> nodes;

  /// Creates a new [ListSqlMigrationServiceMonitoringDataResult].
  /// [name] The name of Integration Runtime.
  /// [nodes] Integration Runtime node monitoring data.
  ListSqlMigrationServiceMonitoringDataResult({
    required this.name,
    required this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nodes': pulumi.Input.encodeList<NodeMonitoringDataResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
    };
  }

  factory ListSqlMigrationServiceMonitoringDataResult.fromMap(Map<String, dynamic> map) {
    return ListSqlMigrationServiceMonitoringDataResult(
      name: map['name'] as String,
      nodes: pulumi.Input.decodeList<NodeMonitoringDataResponse>(map['nodes']!, (value) => NodeMonitoringDataResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

