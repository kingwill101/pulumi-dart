// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomModelsModelSummary {
  /// Creation time of the model.
  final pulumi.Input<String> creationTime;
  /// ARN of the custom model.
  final pulumi.Input<String> modelArn;
  /// Name of the custom model.
  final pulumi.Input<String> modelName;

  /// Creates a new [GetCustomModelsModelSummary].
  /// [creationTime] Creation time of the model.
  /// [modelArn] ARN of the custom model.
  /// [modelName] Name of the custom model.
  const GetCustomModelsModelSummary({
    required this.creationTime,
    required this.modelArn,
    required this.modelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'modelArn': modelArn,
      'modelName': modelName,
    };
  }

  factory GetCustomModelsModelSummary.fromMap(Map<String, dynamic> map) {
    return GetCustomModelsModelSummary(
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
    );
  }
}
