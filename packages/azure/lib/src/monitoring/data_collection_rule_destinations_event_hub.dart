// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleDestinationsEventHub {
  /// The resource ID of the Event Hub.
  final String eventHubId;
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final String name;

  /// Creates a new [DataCollectionRuleDestinationsEventHub].
  /// [eventHubId] The resource ID of the Event Hub.
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  DataCollectionRuleDestinationsEventHub({
    required this.eventHubId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubId': eventHubId,
      'name': name,
    };
  }

  factory DataCollectionRuleDestinationsEventHub.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsEventHub(
      eventHubId: map['eventHubId'] as String,
      name: map['name'] as String,
    );
  }
}

