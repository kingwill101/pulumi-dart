// ignore_for_file: unused_element, unnecessary_cast

/// Time-based Constraint for Study
class GoogleCloudAiplatformV1StudyTimeConstraint {
  /// Compares the wallclock time to this time. Must use UTC timezone.
  final String? endTime;

  /// Counts the wallclock time passed since the creation of this Study.
  final String? maxDuration;

  /// Creates a new [GoogleCloudAiplatformV1StudyTimeConstraint].
  /// [endTime] Compares the wallclock time to this time. Must use UTC timezone.
  /// [maxDuration] Counts the wallclock time passed since the creation of this Study.
  GoogleCloudAiplatformV1StudyTimeConstraint({this.endTime, this.maxDuration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endTime': ?endTime, 'maxDuration': ?maxDuration};
  }

  factory GoogleCloudAiplatformV1StudyTimeConstraint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1StudyTimeConstraint(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      maxDuration: map['maxDuration'] == null
          ? null
          : map['maxDuration'] as String,
    );
  }
}
