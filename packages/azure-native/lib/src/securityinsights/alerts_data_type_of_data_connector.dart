// ignore_for_file: unused_element, unnecessary_cast

import 'data_connector_data_type_common.dart';

/// Alerts data type for data connectors.
class AlertsDataTypeOfDataConnector {
  /// Alerts data type connection.
  final DataConnectorDataTypeCommon alerts;

  /// Creates a new [AlertsDataTypeOfDataConnector].
  /// [alerts] Alerts data type connection.
  AlertsDataTypeOfDataConnector({
    required this.alerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': alerts.toMap(),
    };
  }

  factory AlertsDataTypeOfDataConnector.fromMap(Map<String, dynamic> map) {
    return AlertsDataTypeOfDataConnector(
      alerts: DataConnectorDataTypeCommon.fromMap((map['alerts'] as Map).cast<String, dynamic>()),
    );
  }
}

