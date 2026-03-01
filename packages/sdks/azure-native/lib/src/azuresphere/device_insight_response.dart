// ignore_for_file: unused_element, unnecessary_cast


/// Device insight report.
class DeviceInsightResponse {
  /// Event description
  final String description;
  /// Device ID
  final String deviceId;
  /// Event end timestamp
  final String endTimestampUtc;
  /// Event category
  final String eventCategory;
  /// Event class
  final String eventClass;
  /// Event count
  final int eventCount;
  /// Event type
  final String eventType;
  /// Event start timestamp
  final String startTimestampUtc;

  /// Creates a new [DeviceInsightResponse].
  /// [description] Event description
  /// [deviceId] Device ID
  /// [endTimestampUtc] Event end timestamp
  /// [eventCategory] Event category
  /// [eventClass] Event class
  /// [eventCount] Event count
  /// [eventType] Event type
  /// [startTimestampUtc] Event start timestamp
  DeviceInsightResponse({
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
      description: map['description'] as String,
      deviceId: map['deviceId'] as String,
      endTimestampUtc: map['endTimestampUtc'] as String,
      eventCategory: map['eventCategory'] as String,
      eventClass: map['eventClass'] as String,
      eventCount: map['eventCount'] as int,
      eventType: map['eventType'] as String,
      startTimestampUtc: map['startTimestampUtc'] as String,
    );
  }
}

