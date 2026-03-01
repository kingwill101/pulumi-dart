// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigAdBreak {
  /// Start time in seconds for the ad break, relative to the output file timeline
  final String? startTimeOffset;

  /// Creates a new [JobTemplateConfigAdBreak].
  /// [startTimeOffset] Start time in seconds for the ad break, relative to the output file timeline
  JobTemplateConfigAdBreak({this.startTimeOffset});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startTimeOffset': ?startTimeOffset};
  }

  factory JobTemplateConfigAdBreak.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigAdBreak(
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
    );
  }
}
