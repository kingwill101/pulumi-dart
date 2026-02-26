// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_period_period_type.dart';

/// Represents period in days/months/years.
class GoogleCloudChannelV1Period {
  /// Total duration of Period Type defined.
  final int? duration;

  /// Period Type.
  final GoogleCloudChannelV1PeriodPeriodType? periodType;

  GoogleCloudChannelV1Period({
    this.duration,
    this.periodType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final periodTypeValue = periodType;
    if (periodTypeValue != null) {
      map['periodType'] = periodTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudChannelV1Period.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1Period(
      duration: map['duration'] == null ? null : map['duration'] as int,
      periodType: map['periodType'] == null
          ? null
          : GoogleCloudChannelV1PeriodPeriodType.fromValue(
              map['periodType'] as String),
    );
  }
}
