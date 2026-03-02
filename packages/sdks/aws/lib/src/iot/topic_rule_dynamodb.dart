// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleDynamodb {
  /// The hash key name.
  final pulumi.Input<String> hashKeyField;
  /// The hash key type. Valid values are "STRING" or "NUMBER".
  final pulumi.Input<String>? hashKeyType;
  /// The hash key value.
  final pulumi.Input<String> hashKeyValue;
  /// The operation. Valid values are "INSERT", "UPDATE", or "DELETE".
  final pulumi.Input<String>? operation;
  /// The action payload.
  final pulumi.Input<String>? payloadField;
  /// The range key name.
  final pulumi.Input<String>? rangeKeyField;
  /// The range key type. Valid values are "STRING" or "NUMBER".
  final pulumi.Input<String>? rangeKeyType;
  /// The range key value.
  final pulumi.Input<String>? rangeKeyValue;
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
  TopicRuleDynamodb({
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
      hashKeyField: (map['hashKeyField'] as String).input(),
      hashKeyType: map['hashKeyType'] == null ? null : (map['hashKeyType'] as String).input(),
      hashKeyValue: (map['hashKeyValue'] as String).input(),
      operation: map['operation'] == null ? null : (map['operation'] as String).input(),
      payloadField: map['payloadField'] == null ? null : (map['payloadField'] as String).input(),
      rangeKeyField: map['rangeKeyField'] == null ? null : (map['rangeKeyField'] as String).input(),
      rangeKeyType: map['rangeKeyType'] == null ? null : (map['rangeKeyType'] as String).input(),
      rangeKeyValue: map['rangeKeyValue'] == null ? null : (map['rangeKeyValue'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

