// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Device insight report.
class DeviceInsightResponse {
  /// Event description
  final pulumi.Input<String> description;
  /// Device ID
  final pulumi.Input<String> deviceId;
  /// Event end timestamp
  final pulumi.Input<String> endTimestampUtc;
  /// Event category
  final pulumi.Input<String> eventCategory;
  /// Event class
  final pulumi.Input<String> eventClass;
  /// Event count
  final pulumi.Input<int> eventCount;
  /// Event type
  final pulumi.Input<String> eventType;
  /// Event start timestamp
  final pulumi.Input<String> startTimestampUtc;

  /// Creates a new [DeviceInsightResponse].
  /// [description] Event description
  /// [deviceId] Device ID
  /// [endTimestampUtc] Event end timestamp
  /// [eventCategory] Event category
  /// [eventClass] Event class
  /// [eventCount] Event count
  /// [eventType] Event type
  /// [startTimestampUtc] Event start timestamp
  const DeviceInsightResponse({
    required this.description,
    required this.deviceId,
    required this.endTimestampUtc,
    required this.eventCategory,
    required this.eventClass,
    required this.eventCount,
    required this.eventType,
    required this.startTimestampUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'deviceId': deviceId,
      'endTimestampUtc': endTimestampUtc,
      'eventCategory': eventCategory,
      'eventClass': eventClass,
      'eventCount': eventCount,
      'eventType': eventType,
      'startTimestampUtc': startTimestampUtc,
    };
  }

  factory DeviceInsightResponse.fromMap(Map<String, dynamic> map) {
    return DeviceInsightResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      deviceId: pulumi.Input.fromValue(map['deviceId'] as String),
      endTimestampUtc: pulumi.Input.fromValue(map['endTimestampUtc'] as String),
      eventCategory: pulumi.Input.fromValue(map['eventCategory'] as String),
      eventClass: pulumi.Input.fromValue(map['eventClass'] as String),
      eventCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['eventCount'])),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      startTimestampUtc: pulumi.Input.fromValue(map['startTimestampUtc'] as String),
    );
  }
}
