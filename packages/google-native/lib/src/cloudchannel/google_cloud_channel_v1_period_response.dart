// ignore_for_file: unused_element, unnecessary_cast

/// Represents period in days/months/years.
class GoogleCloudChannelV1PeriodResponse {
  /// Total duration of Period Type defined.
  final int duration;

  /// Period Type.
  final String periodType;

  /// Creates a new [GoogleCloudChannelV1PeriodResponse].
  /// [duration] Total duration of Period Type defined.
  /// [periodType] Period Type.
  GoogleCloudChannelV1PeriodResponse({
    required this.duration,
    required this.periodType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'duration': duration, 'periodType': periodType};
  }

  factory GoogleCloudChannelV1PeriodResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1PeriodResponse(
      duration: map['duration'] as int,
      periodType: map['periodType'] as String,
    );
  }
}
