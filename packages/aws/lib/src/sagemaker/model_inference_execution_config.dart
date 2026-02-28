// ignore_for_file: unused_element, unnecessary_cast

class ModelInferenceExecutionConfig {
  /// How containers in a multi-container are run. Allowed values are: `Serial` and `Direct`.
  final String mode;

  /// Creates a new [ModelInferenceExecutionConfig].
  /// [mode] How containers in a multi-container are run. Allowed values are: `Serial` and `Direct`.
  ModelInferenceExecutionConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory ModelInferenceExecutionConfig.fromMap(Map<String, dynamic> map) {
    return ModelInferenceExecutionConfig(
      mode: map['mode'] as String,
    );
  }
}
