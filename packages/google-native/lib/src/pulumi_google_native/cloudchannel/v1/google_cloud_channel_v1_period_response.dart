// ignore_for_file: unused_element, unnecessary_cast

/// Represents period in days/months/years.
class GoogleCloudChannelV1PeriodResponse {
  /// Total duration of Period Type defined.
  final int duration;

  /// Period Type.
  final String periodType;

  GoogleCloudChannelV1PeriodResponse({
    required this.duration,
    required this.periodType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['periodType'] = periodType;
    return map;
  }

  factory GoogleCloudChannelV1PeriodResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1PeriodResponse(
      duration: map['duration'] as int,
      periodType: map['periodType'] as String,
    );
  }
}
