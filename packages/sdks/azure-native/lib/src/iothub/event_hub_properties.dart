// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the provisioned Event Hub-compatible endpoint used by the IoT hub.
class EventHubProperties {
  /// The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  final int? partitionCount;
  /// The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  final double? retentionTimeInDays;

  /// Creates a new [EventHubProperties].
  /// [partitionCount] The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  /// [retentionTimeInDays] The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  EventHubProperties({
    this.partitionCount,
    this.retentionTimeInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionCount': ?partitionCount,
      'retentionTimeInDays': ?retentionTimeInDays,
    };
  }

  factory EventHubProperties.fromMap(Map<String, dynamic> map) {
    return EventHubProperties(
      partitionCount: map['partitionCount'] == null ? null : map['partitionCount'] as int,
      retentionTimeInDays: map['retentionTimeInDays'] == null ? null : map['retentionTimeInDays'] as double,
    );
  }
}

