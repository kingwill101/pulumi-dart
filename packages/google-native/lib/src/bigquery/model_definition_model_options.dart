// ignore_for_file: unused_element, unnecessary_cast

/// [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
class ModelDefinitionModelOptions {
  final List<String>? labels;
  final String? lossType;
  final String? modelType;

  /// Creates a new [ModelDefinitionModelOptions].
  /// [labels] Optional.
  /// [lossType] Optional.
  /// [modelType] Optional.
  ModelDefinitionModelOptions({
    this.labels,
    this.lossType,
    this.modelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final lossTypeValue = lossType;
    if (lossTypeValue != null) {
      map['lossType'] = lossTypeValue;
    }
    final modelTypeValue = modelType;
    if (modelTypeValue != null) {
      map['modelType'] = modelTypeValue;
    }
    return map;
  }

  factory ModelDefinitionModelOptions.fromMap(Map<String, dynamic> map) {
    return ModelDefinitionModelOptions(
      labels:
          map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      lossType: map['lossType'] == null ? null : map['lossType'] as String,
      modelType: map['modelType'] == null ? null : map['modelType'] as String,
    );
  }
}
