// ignore_for_file: unused_element, unnecessary_cast


class JobExtractSourceModel {
  /// The ID of the dataset containing this model.
  final String datasetId;
  /// The ID of the model.
  final String modelId;
  /// The ID of the project containing this model.
  final String projectId;

  /// Creates a new [JobExtractSourceModel].
  /// [datasetId] The ID of the dataset containing this model.
  /// [modelId] The ID of the model.
  /// [projectId] The ID of the project containing this model.
  JobExtractSourceModel({
    required this.datasetId,
    required this.modelId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'modelId': modelId,
      'projectId': projectId,
    };
  }

  factory JobExtractSourceModel.fromMap(Map<String, dynamic> map) {
    return JobExtractSourceModel(
      datasetId: map['datasetId'] as String,
      modelId: map['modelId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

