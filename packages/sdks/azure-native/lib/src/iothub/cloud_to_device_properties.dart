// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feedback_properties.dart';

/// The IoT hub cloud-to-device messaging properties.
class CloudToDeviceProperties {
  /// The default time to live for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  final pulumi.Input<String>? defaultTtlAsIso8601;
  /// The properties of the feedback queue for cloud-to-device messages.
  final pulumi.Input<FeedbackProperties>? feedback;
  /// The max delivery count for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  final pulumi.Input<int>? maxDeliveryCount;

  /// Creates a new [CloudToDeviceProperties].
  /// [defaultTtlAsIso8601] The default time to live for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  /// [feedback] The properties of the feedback queue for cloud-to-device messages.
  /// [maxDeliveryCount] The max delivery count for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
  CloudToDeviceProperties({
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
      defaultTtlAsIso8601: map['defaultTtlAsIso8601'] == null ? null : (map['defaultTtlAsIso8601'] as String).input(),
      feedback: map['feedback'] == null ? null : (FeedbackProperties.fromMap((map['feedback'] as Map).cast<String, dynamic>())).input(),
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : (map['maxDeliveryCount'] as int).input(),
    );
  }
}

