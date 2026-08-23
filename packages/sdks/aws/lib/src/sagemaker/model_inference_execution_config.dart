// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelInferenceExecutionConfig {
  /// How containers in a multi-container are run. Allowed values are: `Serial` and `Direct`.
  final pulumi.Input<String> mode;

  /// Creates a new [ModelInferenceExecutionConfig].
  /// [mode] How containers in a multi-container are run. Allowed values are: `Serial` and `Direct`.
  const ModelInferenceExecutionConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory ModelInferenceExecutionConfig.fromMap(Map<String, dynamic> map) {
    return ModelInferenceExecutionConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
