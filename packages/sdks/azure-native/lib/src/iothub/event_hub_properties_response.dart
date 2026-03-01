// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the provisioned Event Hub-compatible endpoint used by the IoT hub.
class EventHubPropertiesResponse {
  /// The Event Hub-compatible endpoint.
  final String endpoint;
  /// The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  final int? partitionCount;
  /// The partition ids in the Event Hub-compatible endpoint.
  final List<String> partitionIds;
  /// The Event Hub-compatible name.
  final String path;
  /// The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  final double? retentionTimeInDays;

  /// Creates a new [EventHubPropertiesResponse].
  /// [endpoint] The Event Hub-compatible endpoint.
  /// [partitionCount] The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  /// [partitionIds] The partition ids in the Event Hub-compatible endpoint.
  /// [path] The Event Hub-compatible name.
  /// [retentionTimeInDays] The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  EventHubPropertiesResponse({
    required this.endpoint,
    this.partitionCount,
    required this.partitionIds,
    required this.path,
    this.retentionTimeInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'partitionCount': ?partitionCount,
      'partitionIds': partitionIds,
      'path': path,
      'retentionTimeInDays': ?retentionTimeInDays,
    };
  }

  factory EventHubPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EventHubPropertiesResponse(
      endpoint: map['endpoint'] as String,
      partitionCount: map['partitionCount'] == null ? null : map['partitionCount'] as int,
      partitionIds: (map['partitionIds'] as List).cast<String>(),
      path: map['path'] as String,
      retentionTimeInDays: map['retentionTimeInDays'] == null ? null : map['retentionTimeInDays'] as double,
    );
  }
}

