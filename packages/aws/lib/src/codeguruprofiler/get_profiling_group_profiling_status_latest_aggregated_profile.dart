// ignore_for_file: unused_element, unnecessary_cast


class GetProfilingGroupProfilingStatusLatestAggregatedProfile {
  final String period;
  final String start;

  /// Creates a new [GetProfilingGroupProfilingStatusLatestAggregatedProfile].
  /// [period] Required.
  /// [start] Required.
  GetProfilingGroupProfilingStatusLatestAggregatedProfile({
    required this.period,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'period': period,
      'start': start,
    };
  }

  factory GetProfilingGroupProfilingStatusLatestAggregatedProfile.fromMap(Map<String, dynamic> map) {
    return GetProfilingGroupProfilingStatusLatestAggregatedProfile(
      period: map['period'] as String,
      start: map['start'] as String,
    );
  }
}

