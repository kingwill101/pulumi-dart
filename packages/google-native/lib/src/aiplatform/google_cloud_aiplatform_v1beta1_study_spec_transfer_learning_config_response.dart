// ignore_for_file: unused_element, unnecessary_cast

/// This contains flag for manually disabling transfer learning for a study. The names of prior studies being used for transfer learning (if any) are also listed here.
class GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse {
  /// Flag to to manually prevent vizier from using transfer learning on a new study. Otherwise, vizier will automatically determine whether or not to use transfer learning.
  final bool disableTransferLearning;

  /// Names of previously completed studies
  final List<String> priorStudyNames;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse].
  /// [disableTransferLearning] Flag to to manually prevent vizier from using transfer learning on a new study. Otherwise, vizier will automatically determine whether or not to use transfer learning.
  /// [priorStudyNames] Names of previously completed studies
  GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse({
    required this.disableTransferLearning,
    required this.priorStudyNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableTransferLearning'] = disableTransferLearning;
    map['priorStudyNames'] = priorStudyNames;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse(
      disableTransferLearning: map['disableTransferLearning'] as bool,
      priorStudyNames: (map['priorStudyNames'] as List).cast<String>(),
    );
  }
}
