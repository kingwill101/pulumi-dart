// ignore_for_file: unused_element, unnecessary_cast


/// Data type for Microsoft Threat Intelligence data connector.
class MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed {
  /// The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  final String lookbackPeriod;
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed].
  /// [lookbackPeriod] The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  /// [state] Describe whether this data type connection is enabled or not.
  MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed({
    required this.lookbackPeriod,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookbackPeriod': lookbackPeriod,
      'state': state,
    };
  }

  factory MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed.fromMap(Map<String, dynamic> map) {
    return MSTIDataConnectorDataTypesMicrosoftEmergingThreatFeed(
      lookbackPeriod: map['lookbackPeriod'] as String,
      state: map['state'] as String,
    );
  }
}

