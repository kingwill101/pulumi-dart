// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDestinationEventHub {
  /// The resource ID of the Event Hub.
  final String eventHubId;
  /// Specifies the name of the Data Collection Rule.
  final String name;

  /// Creates a new [GetDataCollectionRuleDestinationEventHub].
  /// [eventHubId] The resource ID of the Event Hub.
  /// [name] Specifies the name of the Data Collection Rule.
  GetDataCollectionRuleDestinationEventHub({
    required this.eventHubId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubId': eventHubId,
      'name': name,
    };
  }

  factory GetDataCollectionRuleDestinationEventHub.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationEventHub(
      eventHubId: map['eventHubId'] as String,
      name: map['name'] as String,
    );
  }
}

