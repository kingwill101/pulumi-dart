// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the provisioned Event Hub-compatible endpoint used by the IoT hub.
class EventHubPropertiesResponse {
  /// The Event Hub-compatible endpoint.
  final pulumi.Input<String> endpoint;
  /// The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  final pulumi.Input<int>? partitionCount;
  /// The partition ids in the Event Hub-compatible endpoint.
  final pulumi.Input<List<String>> partitionIds;
  /// The Event Hub-compatible name.
  final pulumi.Input<String> path;
  /// The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  final pulumi.Input<double>? retentionTimeInDays;

  /// Creates a new [EventHubPropertiesResponse].
  /// [endpoint] The Event Hub-compatible endpoint.
  /// [partitionCount] The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  /// [partitionIds] The partition ids in the Event Hub-compatible endpoint.
  /// [path] The Event Hub-compatible name.
  /// [retentionTimeInDays] The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  const EventHubPropertiesResponse({
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
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      partitionIds: pulumi.Input.fromValue((map['partitionIds'] as List).cast<String>()),
      path: pulumi.Input.fromValue(map['path'] as String),
      retentionTimeInDays: (() { final guardedValue = map['retentionTimeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
