// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_study_spec_response.dart';

/// Result data returned by getStudy.
class GetStudyResult {
  /// Time at which the study was created.
  final String createTime;

  /// Describes the Study, default value is empty string.
  final String displayName;

  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  final String inactiveReason;

  /// The name of a study. The study's globally unique identifier. Format: `projects/{project}/locations/{location}/studies/{study}`
  final String name;

  /// The detailed state of a Study.
  final String state;

  /// Configuration of the Study.
  final GoogleCloudAiplatformV1StudySpecResponse studySpec;

  GetStudyResult({
    required this.createTime,
    required this.displayName,
    required this.inactiveReason,
    required this.name,
    required this.state,
    required this.studySpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['inactiveReason'] = inactiveReason;
    map['name'] = name;
    map['state'] = state;
    map['studySpec'] = studySpec.toMap();
    return map;
  }

  factory GetStudyResult.fromMap(Map<String, dynamic> map) {
    return GetStudyResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      inactiveReason: map['inactiveReason'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      studySpec: GoogleCloudAiplatformV1StudySpecResponse.fromMap(
          (map['studySpec'] as Map).cast<String, dynamic>()),
    );
  }
}
