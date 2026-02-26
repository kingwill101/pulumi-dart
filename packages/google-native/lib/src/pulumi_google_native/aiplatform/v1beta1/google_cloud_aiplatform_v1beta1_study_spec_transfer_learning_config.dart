// ignore_for_file: unused_element, unnecessary_cast

/// This contains flag for manually disabling transfer learning for a study. The names of prior studies being used for transfer learning (if any) are also listed here.
class GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig {
  /// Flag to to manually prevent vizier from using transfer learning on a new study. Otherwise, vizier will automatically determine whether or not to use transfer learning.
  final bool? disableTransferLearning;

  GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig({
    this.disableTransferLearning,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableTransferLearningValue = disableTransferLearning;
    if (disableTransferLearningValue != null) {
      map['disableTransferLearning'] = disableTransferLearningValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig(
      disableTransferLearning: map['disableTransferLearning'] == null
          ? null
          : map['disableTransferLearning'] as bool,
    );
  }
}
