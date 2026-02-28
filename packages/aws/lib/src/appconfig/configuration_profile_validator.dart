// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationProfileValidator {
  /// Either the JSON Schema content or the ARN of an AWS Lambda function.
  final String? content;

  /// Type of validator. Valid values: `JSON_SCHEMA` and `LAMBDA`.
  final String type;

  /// Creates a new [ConfigurationProfileValidator].
  /// [content] Either the JSON Schema content or the ARN of an AWS Lambda function.
  /// [type] Type of validator. Valid values: `JSON_SCHEMA` and `LAMBDA`.
  ConfigurationProfileValidator({
    this.content,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    map['type'] = type;
    return map;
  }

  factory ConfigurationProfileValidator.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileValidator(
      content: map['content'] == null ? null : map['content'] as String,
      type: map['type'] as String,
    );
  }
}
