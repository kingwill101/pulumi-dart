// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersBatchJobParametersContainerOverridesEnvironment {
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final String? name;

  /// Value of parameter to start execution of a SageMaker AI Model Building Pipeline. Maximum length of 1024.
  final String? value;

  PipeTargetParametersBatchJobParametersContainerOverridesEnvironment({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory PipeTargetParametersBatchJobParametersContainerOverridesEnvironment.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersContainerOverridesEnvironment(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
