// ignore_for_file: unused_element, unnecessary_cast

/// Contains information about the original Model if this Model is a copy.
class GoogleCloudAiplatformV1beta1ModelOriginalModelInfoResponse {
  /// The resource name of the Model this Model is a copy of, including the revision. Format: `projects/{project}/locations/{location}/models/{model_id}@{version_id}`
  final String model;

  GoogleCloudAiplatformV1beta1ModelOriginalModelInfoResponse({
    required this.model,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['model'] = model;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ModelOriginalModelInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelOriginalModelInfoResponse(
      model: map['model'] as String,
    );
  }
}
