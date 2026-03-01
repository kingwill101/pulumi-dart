// ignore_for_file: unused_element, unnecessary_cast

import 'tidata_connector_data_types_indicators.dart';

/// The available data types for TI (Threat Intelligence) data connector.
class TIDataConnectorDataTypes {
  /// Data type for indicators connection.
  final TIDataConnectorDataTypesIndicators indicators;

  /// Creates a new [TIDataConnectorDataTypes].
  /// [indicators] Data type for indicators connection.
  TIDataConnectorDataTypes({
    required this.indicators,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indicators': indicators.toMap(),
    };
  }

  factory TIDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return TIDataConnectorDataTypes(
      indicators: TIDataConnectorDataTypesIndicators.fromMap((map['indicators'] as Map).cast<String, dynamic>()),
    );
  }
}

