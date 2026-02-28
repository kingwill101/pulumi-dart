// ignore_for_file: unused_element, unnecessary_cast


class TopicRuleErrorActionDynamodb {
  /// The hash key name.
  final String hashKeyField;
  /// The hash key type. Valid values are "STRING" or "NUMBER".
  final String? hashKeyType;
  /// The hash key value.
  final String hashKeyValue;
  /// The operation. Valid values are "INSERT", "UPDATE", or "DELETE".
  final String? operation;
  /// The action payload.
  final String? payloadField;
  /// The range key name.
  final String? rangeKeyField;
  /// The range key type. Valid values are "STRING" or "NUMBER".
  final String? rangeKeyType;
  /// The range key value.
  final String? rangeKeyValue;
  /// The ARN of the IAM role that grants access to the DynamoDB table.
  final String roleArn;
  /// The name of the DynamoDB table.
  final String tableName;

  /// Creates a new [TopicRuleErrorActionDynamodb].
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
  TopicRuleErrorActionDynamodb({
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

  factory TopicRuleErrorActionDynamodb.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionDynamodb(
      hashKeyField: map['hashKeyField'] as String,
      hashKeyType: map['hashKeyType'] == null ? null : map['hashKeyType'] as String,
      hashKeyValue: map['hashKeyValue'] as String,
      operation: map['operation'] == null ? null : map['operation'] as String,
      payloadField: map['payloadField'] == null ? null : map['payloadField'] as String,
      rangeKeyField: map['rangeKeyField'] == null ? null : map['rangeKeyField'] as String,
      rangeKeyType: map['rangeKeyType'] == null ? null : map['rangeKeyType'] as String,
      rangeKeyValue: map['rangeKeyValue'] == null ? null : map['rangeKeyValue'] as String,
      roleArn: map['roleArn'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

