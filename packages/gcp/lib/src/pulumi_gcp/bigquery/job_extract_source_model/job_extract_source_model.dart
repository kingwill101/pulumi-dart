// ignore_for_file: unused_element, unnecessary_cast

class JobExtractSourceModel {
  /// The ID of the dataset containing this model.
  final String datasetId;

  /// The ID of the model.
  final String modelId;

  /// The ID of the project containing this model.
  final String projectId;

  JobExtractSourceModel({
    required this.datasetId,
    required this.modelId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['modelId'] = modelId;
    map['projectId'] = projectId;
    return map;
  }

  factory JobExtractSourceModel.fromMap(Map<String, dynamic> map) {
    return JobExtractSourceModel(
      datasetId: map['datasetId'] as String,
      modelId: map['modelId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
