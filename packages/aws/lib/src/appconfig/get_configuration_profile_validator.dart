// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationProfileValidator {
  /// Either the JSON Schema content or the ARN of an AWS Lambda function.
  final String content;

  /// Type of validator. Valid values: JSON_SCHEMA and LAMBDA.
  final String type;

  /// Creates a new [GetConfigurationProfileValidator].
  /// [content] Either the JSON Schema content or the ARN of an AWS Lambda function.
  /// [type] Type of validator. Valid values: JSON_SCHEMA and LAMBDA.
  GetConfigurationProfileValidator({
    required this.content,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['type'] = type;
    return map;
  }

  factory GetConfigurationProfileValidator.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileValidator(
      content: map['content'] as String,
      type: map['type'] as String,
    );
  }
}
