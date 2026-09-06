// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feedback_properties.dart';

/// The IoT hub cloud-to-device messaging properties.
class CloudToDeviceProperties {
  /// The default time to live for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  final pulumi.Input<String?>? defaultTtlAsIso8601;
  /// The properties of the feedback queue for cloud-to-device messages.
  final pulumi.Input<FeedbackProperties?>? feedback;
  /// The max delivery count for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  final pulumi.Input<int?>? maxDeliveryCount;

  /// Creates a new [CloudToDeviceProperties].
  /// [defaultTtlAsIso8601] The default time to live for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  /// [feedback] The properties of the feedback queue for cloud-to-device messages.
  /// [maxDeliveryCount] The max delivery count for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  const CloudToDeviceProperties({
    this.defaultTtlAsIso8601,
    this.feedback,
    this.maxDeliveryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTtlAsIso8601': ?defaultTtlAsIso8601,
      'feedback': ?pulumi.Input.mapOptionalInputValue<FeedbackProperties, Map<String, dynamic>>(feedback, (value) => value.toMap()),
      'maxDeliveryCount': ?maxDeliveryCount,
    };
  }

  factory CloudToDeviceProperties.fromMap(Map<String, dynamic> map) {
    return CloudToDeviceProperties(
      defaultTtlAsIso8601: (() { final guardedValue = map['defaultTtlAsIso8601']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedback: (() { final guardedValue = map['feedback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedbackProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
