// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the messaging endpoints used by this IoT hub.
class MessagingEndpointProperties {
  /// The lock duration. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  final pulumi.Input<String>? lockDurationAsIso8601;

  /// The number of times the IoT hub attempts to deliver a message. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  final pulumi.Input<int>? maxDeliveryCount;

  /// The period of time for which a message is available to consume before it is expired by the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  final pulumi.Input<String>? ttlAsIso8601;

  /// Creates a new [MessagingEndpointProperties].
  /// [lockDurationAsIso8601] The lock duration. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  /// [maxDeliveryCount] The number of times the IoT hub attempts to deliver a message. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  /// [ttlAsIso8601] The period of time for which a message is available to consume before it is expired by the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
  MessagingEndpointProperties({
    this.lockDurationAsIso8601,
    this.maxDeliveryCount,
    this.ttlAsIso8601,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockDurationAsIso8601': ?lockDurationAsIso8601,
      'maxDeliveryCount': ?maxDeliveryCount,
      'ttlAsIso8601': ?ttlAsIso8601,
    };
  }

  factory MessagingEndpointProperties.fromMap(Map<String, dynamic> map) {
    return MessagingEndpointProperties(
      lockDurationAsIso8601: (() {
        final guardedValue = map['lockDurationAsIso8601'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxDeliveryCount: (() {
        final guardedValue = map['maxDeliveryCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ttlAsIso8601: (() {
        final guardedValue = map['ttlAsIso8601'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
