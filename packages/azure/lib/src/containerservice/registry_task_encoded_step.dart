// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskEncodedStep {
  /// The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  final String? contextAccessToken;
  /// The URL (absolute or relative) of the source context for this step.
  final String? contextPath;
  /// Specifies a map of secret values that can be passed when running a task.
  final Map<String, String>? secretValues;
  /// The (optionally base64 encoded) content of the build template.
  final String taskContent;
  /// The (optionally base64 encoded) content of the build parameters.
  final String? valueContent;
  /// Specifies a map of values that can be passed when running a task.
  final Map<String, String>? values;

  /// Creates a new [RegistryTaskEncodedStep].
  /// [contextAccessToken] The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
  /// [contextPath] The URL (absolute or relative) of the source context for this step.
  /// [secretValues] Specifies a map of secret values that can be passed when running a task.
  /// [taskContent] The (optionally base64 encoded) content of the build template.
  /// [valueContent] The (optionally base64 encoded) content of the build parameters.
  /// [values] Specifies a map of values that can be passed when running a task.
  RegistryTaskEncodedStep({
    this.contextAccessToken,
    this.contextPath,
    this.secretValues,
    required this.taskContent,
    this.valueContent,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'secretValues': ?secretValues,
      'taskContent': taskContent,
      'valueContent': ?valueContent,
      'values': ?values,
    };
  }

  factory RegistryTaskEncodedStep.fromMap(Map<String, dynamic> map) {
    return RegistryTaskEncodedStep(
      contextAccessToken: map['contextAccessToken'] == null ? null : map['contextAccessToken'] as String,
      contextPath: map['contextPath'] == null ? null : map['contextPath'] as String,
      secretValues: map['secretValues'] == null ? null : (map['secretValues'] as Map).cast<String, String>(),
      taskContent: map['taskContent'] as String,
      valueContent: map['valueContent'] == null ? null : map['valueContent'] as String,
      values: map['values'] == null ? null : (map['values'] as Map).cast<String, String>(),
    );
  }
}

