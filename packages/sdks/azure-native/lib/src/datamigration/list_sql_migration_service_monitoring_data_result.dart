// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_monitoring_data_response.dart';

/// Result data returned by listSqlMigrationServiceMonitoringData.
class ListSqlMigrationServiceMonitoringDataResult {
  /// The name of Integration Runtime.
  final String? name;
  /// Integration Runtime node monitoring data.
  final List<NodeMonitoringDataResponse>? nodes;

  /// Creates a new [ListSqlMigrationServiceMonitoringDataResult].
  /// [name] The name of Integration Runtime.
  /// [nodes] Integration Runtime node monitoring data.
  const ListSqlMigrationServiceMonitoringDataResult({
    this.name,
    this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nodes': ?(() { final guardedValue = nodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<NodeMonitoringDataResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListSqlMigrationServiceMonitoringDataResult.fromMap(Map<String, dynamic> map) {
    return ListSqlMigrationServiceMonitoringDataResult(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeMonitoringDataResponse>(guardedValue, (value) => NodeMonitoringDataResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
