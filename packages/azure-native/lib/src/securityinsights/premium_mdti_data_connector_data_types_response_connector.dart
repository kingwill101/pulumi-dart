// ignore_for_file: unused_element, unnecessary_cast


/// Data type for Microsoft Defender for Threat Intelligence Premium data connector.
class PremiumMdtiDataConnectorDataTypesResponseConnector {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [PremiumMdtiDataConnectorDataTypesResponseConnector].
  /// [state] Describe whether this data type connection is enabled or not.
  PremiumMdtiDataConnectorDataTypesResponseConnector({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory PremiumMdtiDataConnectorDataTypesResponseConnector.fromMap(Map<String, dynamic> map) {
    return PremiumMdtiDataConnectorDataTypesResponseConnector(
      state: map['state'] as String,
    );
  }
}

