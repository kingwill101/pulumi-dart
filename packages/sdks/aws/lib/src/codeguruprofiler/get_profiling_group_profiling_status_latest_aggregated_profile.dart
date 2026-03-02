// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProfilingGroupProfilingStatusLatestAggregatedProfile {
  final pulumi.Input<String> period;
  final pulumi.Input<String> start;

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
      period: (map['period'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

