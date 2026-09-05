// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleDynamodb {
  /// The hash key name.
  final pulumi.Input<String> hashKeyField;
  /// The hash key type. Valid values are "STRING" or "NUMBER".
  final pulumi.Input<String?>? hashKeyType;
  /// The hash key value.
  final pulumi.Input<String> hashKeyValue;
  /// The operation. Valid values are "INSERT", "UPDATE", or "DELETE".
  final pulumi.Input<String?>? operation;
  /// The action payload.
  final pulumi.Input<String?>? payloadField;
  /// The range key name.
  final pulumi.Input<String?>? rangeKeyField;
  /// The range key type. Valid values are "STRING" or "NUMBER".
  final pulumi.Input<String?>? rangeKeyType;
  /// The range key value.
  final pulumi.Input<String?>? rangeKeyValue;
  /// The ARN of the IAM role that grants access to the DynamoDB table.
  final pulumi.Input<String> roleArn;
  /// The name of the DynamoDB table.
  final pulumi.Input<String> tableName;

  /// Creates a new [TopicRuleDynamodb].
  /// [hashKeyField] The hash key name.
  /// [hashKeyType] The hash key type. Valid values are "STRING" or "NUMBER".
  /// [hashKeyValue] The hash key value.
  /// [operation] The operation. Valid values are "INSERT", "UPDATE", or "DELETE".
  /// [payloadField] The action payload.
  /// [rangeKeyField] The range key name.
  /// [rangeKeyType] The range key type. Valid values are "STRING" or "NUMBER".
  /// [rangeKeyValue] The range key value.
  /// [roleArn] The ARN of the IAM role that grants access to the DynamoDB table.
  /// [tableName] The name of the DynamoDB table.
  const TopicRuleDynamodb({
    required this.hashKeyField,
    this.hashKeyType,
    required this.hashKeyValue,
    this.operation,
    this.payloadField,
    this.rangeKeyField,
    this.rangeKeyType,
    this.rangeKeyValue,
    required this.roleArn,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashKeyField': hashKeyField,
      'hashKeyType': ?hashKeyType,
      'hashKeyValue': hashKeyValue,
      'operation': ?operation,
      'payloadField': ?payloadField,
      'rangeKeyField': ?rangeKeyField,
      'rangeKeyType': ?rangeKeyType,
      'rangeKeyValue': ?rangeKeyValue,
      'roleArn': roleArn,
      'tableName': tableName,
    };
  }

  factory TopicRuleDynamodb.fromMap(Map<String, dynamic> map) {
    return TopicRuleDynamodb(
      hashKeyField: pulumi.Input.fromValue(map['hashKeyField'] as String),
      hashKeyType: (() { final guardedValue = map['hashKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashKeyValue: pulumi.Input.fromValue(map['hashKeyValue'] as String),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadField: (() { final guardedValue = map['payloadField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeKeyField: (() { final guardedValue = map['rangeKeyField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeKeyType: (() { final guardedValue = map['rangeKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeKeyValue: (() { final guardedValue = map['rangeKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
