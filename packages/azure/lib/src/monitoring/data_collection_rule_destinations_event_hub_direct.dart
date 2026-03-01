// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleDestinationsEventHubDirect {
  /// The resource ID of the Event Hub.
  final String eventHubId;
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final String name;

  /// Creates a new [DataCollectionRuleDestinationsEventHubDirect].
  /// [eventHubId] The resource ID of the Event Hub.
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  DataCollectionRuleDestinationsEventHubDirect({
    required this.eventHubId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubId': eventHubId,
      'name': name,
    };
  }

  factory DataCollectionRuleDestinationsEventHubDirect.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsEventHubDirect(
      eventHubId: map['eventHubId'] as String,
      name: map['name'] as String,
    );
  }
}

