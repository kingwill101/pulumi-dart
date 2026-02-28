// ignore_for_file: unused_element, unnecessary_cast


/// Time-based Constraint for Study
class GoogleCloudAiplatformV1StudyTimeConstraintResponse {
  /// Compares the wallclock time to this time. Must use UTC timezone.
  final String endTime;
  /// Counts the wallclock time passed since the creation of this Study.
  final String maxDuration;

  /// Creates a new [GoogleCloudAiplatformV1StudyTimeConstraintResponse].
  /// [endTime] Compares the wallclock time to this time. Must use UTC timezone.
  /// [maxDuration] Counts the wallclock time passed since the creation of this Study.
  GoogleCloudAiplatformV1StudyTimeConstraintResponse({
    required this.endTime,
    required this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'maxDuration': maxDuration,
    };
  }

  factory GoogleCloudAiplatformV1StudyTimeConstraintResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudyTimeConstraintResponse(
      endTime: map['endTime'] as String,
      maxDuration: map['maxDuration'] as String,
    );
  }
}

