// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the provisioned Event Hub-compatible endpoint used by the IoT hub.
class EventHubProperties {
  /// The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  final pulumi.Input<int?>? partitionCount;
  /// The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  final pulumi.Input<double?>? retentionTimeInDays;

  /// Creates a new [EventHubProperties].
  /// [partitionCount] The number of partitions for receiving device-to-cloud messages in the Event Hub-compatible endpoint. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages.
  /// [retentionTimeInDays] The retention time for device-to-cloud messages in days. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#device-to-cloud-messages
  const EventHubProperties({
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
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      retentionTimeInDays: (() { final guardedValue = map['retentionTimeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
