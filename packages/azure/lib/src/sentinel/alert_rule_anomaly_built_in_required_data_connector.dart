// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleAnomalyBuiltInRequiredDataConnector {
  /// The ID of the required Data Connector.
  final String? connectorId;
  /// A list of data types of the required Data Connector.
  final List<String>? dataTypes;

  /// Creates a new [AlertRuleAnomalyBuiltInRequiredDataConnector].
  /// [connectorId] The ID of the required Data Connector.
  /// [dataTypes] A list of data types of the required Data Connector.
  AlertRuleAnomalyBuiltInRequiredDataConnector({
    this.connectorId,
    this.dataTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': ?connectorId,
      'dataTypes': ?dataTypes,
    };
  }

  factory AlertRuleAnomalyBuiltInRequiredDataConnector.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyBuiltInRequiredDataConnector(
      connectorId: map['connectorId'] == null ? null : map['connectorId'] as String,
      dataTypes: map['dataTypes'] == null ? null : (map['dataTypes'] as List).cast<String>(),
    );
  }
}

