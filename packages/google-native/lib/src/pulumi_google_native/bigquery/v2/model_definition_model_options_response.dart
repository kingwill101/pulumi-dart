// ignore_for_file: unused_element, unnecessary_cast

/// [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
class ModelDefinitionModelOptionsResponse {
  final List<String> labels;
  final String lossType;
  final String modelType;

  ModelDefinitionModelOptionsResponse({
    required this.labels,
    required this.lossType,
    required this.modelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['lossType'] = lossType;
    map['modelType'] = modelType;
    return map;
  }

  factory ModelDefinitionModelOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return ModelDefinitionModelOptionsResponse(
      labels: (map['labels'] as List).cast<String>(),
      lossType: map['lossType'] as String,
      modelType: map['modelType'] as String,
    );
  }
}
