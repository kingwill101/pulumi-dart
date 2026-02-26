// ignore_for_file: unused_element, unnecessary_cast

class DatasetReferenceResponse {
  /// [Required] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final String datasetId;

  /// [Optional] The ID of the project containing this dataset.
  final String project;

  DatasetReferenceResponse({
    required this.datasetId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['project'] = project;
    return map;
  }

  factory DatasetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return DatasetReferenceResponse(
      datasetId: map['datasetId'] as String,
      project: map['project'] as String,
    );
  }
}
