// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationProfileValidator {
  /// Either the JSON Schema content or the ARN of an AWS Lambda function.
  final pulumi.Input<String>? content;
  /// Type of validator. Valid values: `JSON_SCHEMA` and `LAMBDA`.
  final pulumi.Input<String> type;

  /// Creates a new [ConfigurationProfileValidator].
  /// [content] Either the JSON Schema content or the ARN of an AWS Lambda function.
  /// [type] Type of validator. Valid values: `JSON_SCHEMA` and `LAMBDA`.
  ConfigurationProfileValidator({
    this.content,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'type': type,
    };
  }

  factory ConfigurationProfileValidator.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileValidator(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

