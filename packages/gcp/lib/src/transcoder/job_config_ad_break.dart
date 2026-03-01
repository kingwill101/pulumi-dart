// ignore_for_file: unused_element, unnecessary_cast

class JobConfigAdBreak {
  /// Start time in seconds for the ad break, relative to the output file timeline
  final String? startTimeOffset;

  /// Creates a new [JobConfigAdBreak].
  /// [startTimeOffset] Start time in seconds for the ad break, relative to the output file timeline
  JobConfigAdBreak({this.startTimeOffset});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startTimeOffset': ?startTimeOffset};
  }

  factory JobConfigAdBreak.fromMap(Map<String, dynamic> map) {
    return JobConfigAdBreak(
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
    );
  }
}
