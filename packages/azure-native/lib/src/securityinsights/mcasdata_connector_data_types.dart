// ignore_for_file: unused_element, unnecessary_cast

import 'data_connector_data_type_common.dart';

/// The available data types for MCAS (Microsoft Cloud App Security) data connector.
class MCASDataConnectorDataTypes {
  /// Alerts data type connection.
  final DataConnectorDataTypeCommon alerts;
  /// Discovery log data type connection.
  final DataConnectorDataTypeCommon? discoveryLogs;

  /// Creates a new [MCASDataConnectorDataTypes].
  /// [alerts] Alerts data type connection.
  /// [discoveryLogs] Discovery log data type connection.
  MCASDataConnectorDataTypes({
    required this.alerts,
    this.discoveryLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': alerts.toMap(),
      'discoveryLogs': ?discoveryLogs == null ? null : discoveryLogs!.toMap(),
    };
  }

  factory MCASDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return MCASDataConnectorDataTypes(
      alerts: DataConnectorDataTypeCommon.fromMap((map['alerts'] as Map).cast<String, dynamic>()),
      discoveryLogs: map['discoveryLogs'] == null ? null : DataConnectorDataTypeCommon.fromMap((map['discoveryLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

