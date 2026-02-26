// ignore_for_file: unused_element, unnecessary_cast

/// Time-based Constraint for Study
class GoogleCloudAiplatformV1StudyTimeConstraint {
  /// Compares the wallclock time to this time. Must use UTC timezone.
  final String? endTime;

  /// Counts the wallclock time passed since the creation of this Study.
  final String? maxDuration;

  GoogleCloudAiplatformV1StudyTimeConstraint({
    this.endTime,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final maxDurationValue = maxDuration;
    if (maxDurationValue != null) {
      map['maxDuration'] = maxDurationValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1StudyTimeConstraint.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudyTimeConstraint(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      maxDuration:
          map['maxDuration'] == null ? null : map['maxDuration'] as String,
    );
  }
}
