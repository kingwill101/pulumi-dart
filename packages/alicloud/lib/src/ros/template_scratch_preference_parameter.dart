// ignore_for_file: unused_element, unnecessary_cast


class TemplateScratchPreferenceParameter {
  /// Priority parameter key. For more information about values, see [supplementary instructions for request parameters](https://www.alibabacloud.com/help/zh/doc-detail/358846.html#h2-url-4).
  final String parameterKey;
  /// Priority parameter value. For more information about values, see [supplementary instructions for request parameters](https://www.alibabacloud.com/help/zh/doc-detail/358846.html#h2-url-4).
  final String parameterValue;

  /// Creates a new [TemplateScratchPreferenceParameter].
  /// [parameterKey] Priority parameter key. For more information about values, see [supplementary instructions for request parameters](https://www.alibabacloud.com/help/zh/doc-detail/358846.html#h2-url-4).
  /// [parameterValue] Priority parameter value. For more information about values, see [supplementary instructions for request parameters](https://www.alibabacloud.com/help/zh/doc-detail/358846.html#h2-url-4).
  TemplateScratchPreferenceParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory TemplateScratchPreferenceParameter.fromMap(Map<String, dynamic> map) {
    return TemplateScratchPreferenceParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

