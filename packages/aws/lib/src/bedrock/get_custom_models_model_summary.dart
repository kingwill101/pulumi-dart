// ignore_for_file: unused_element, unnecessary_cast

class GetCustomModelsModelSummary {
  /// Creation time of the model.
  final String creationTime;

  /// The ARN of the custom model.
  final String modelArn;

  /// The name of the custom model.
  final String modelName;

  /// Creates a new [GetCustomModelsModelSummary].
  /// [creationTime] Creation time of the model.
  /// [modelArn] The ARN of the custom model.
  /// [modelName] The name of the custom model.
  GetCustomModelsModelSummary({
    required this.creationTime,
    required this.modelArn,
    required this.modelName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTime'] = creationTime;
    map['modelArn'] = modelArn;
    map['modelName'] = modelName;
    return map;
  }

  factory GetCustomModelsModelSummary.fromMap(Map<String, dynamic> map) {
    return GetCustomModelsModelSummary(
      creationTime: map['creationTime'] as String,
      modelArn: map['modelArn'] as String,
      modelName: map['modelName'] as String,
    );
  }
}
