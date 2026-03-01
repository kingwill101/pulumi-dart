// ignore_for_file: unused_element, unnecessary_cast


/// The configuration of the destination of the data.
class DCRConfigurationResponse {
  /// Represents the data collection ingestion endpoint in log analytics.
  final String dataCollectionEndpoint;
  /// The data collection rule immutable id, the rule defines the transformation and data destination.
  final String dataCollectionRuleImmutableId;
  /// The stream we are sending the data to.
  final String streamName;

  /// Creates a new [DCRConfigurationResponse].
  /// [dataCollectionEndpoint] Represents the data collection ingestion endpoint in log analytics.
  /// [dataCollectionRuleImmutableId] The data collection rule immutable id, the rule defines the transformation and data destination.
  /// [streamName] The stream we are sending the data to.
  DCRConfigurationResponse({
    required this.dataCollectionEndpoint,
    required this.dataCollectionRuleImmutableId,
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpoint': dataCollectionEndpoint,
      'dataCollectionRuleImmutableId': dataCollectionRuleImmutableId,
      'streamName': streamName,
    };
  }

  factory DCRConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DCRConfigurationResponse(
      dataCollectionEndpoint: map['dataCollectionEndpoint'] as String,
      dataCollectionRuleImmutableId: map['dataCollectionRuleImmutableId'] as String,
      streamName: map['streamName'] as String,
    );
  }
}

