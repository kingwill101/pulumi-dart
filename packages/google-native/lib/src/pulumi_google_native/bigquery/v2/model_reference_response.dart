// ignore_for_file: unused_element, unnecessary_cast

class ModelReferenceResponse {
  /// The ID of the dataset containing this model.
  final String datasetId;

  /// The ID of the model. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final String modelId;

  /// The ID of the project containing this model.
  final String project;

  ModelReferenceResponse({
    required this.datasetId,
    required this.modelId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['modelId'] = modelId;
    map['project'] = project;
    return map;
  }

  factory ModelReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ModelReferenceResponse(
      datasetId: map['datasetId'] as String,
      modelId: map['modelId'] as String,
      project: map['project'] as String,
    );
  }
}
