// ignore_for_file: unused_element, unnecessary_cast

import 'topic_rule_dynamodbv2_put_item.dart';

class TopicRuleDynamodbv2 {
  /// Configuration block with DynamoDB Table to which the message will be written. Nested arguments below.
  final TopicRuleDynamodbv2PutItem? putItem;

  /// The ARN of the IAM role that grants access to the DynamoDB table.
  final String roleArn;

  /// Creates a new [TopicRuleDynamodbv2].
  /// [putItem] Configuration block with DynamoDB Table to which the message will be written. Nested arguments below.
  /// [roleArn] The ARN of the IAM role that grants access to the DynamoDB table.
  TopicRuleDynamodbv2({
    this.putItem,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final putItemValue = putItem;
    if (putItemValue != null) {
      map['putItem'] = putItemValue.toMap();
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory TopicRuleDynamodbv2.fromMap(Map<String, dynamic> map) {
    return TopicRuleDynamodbv2(
      putItem: map['putItem'] == null
          ? null
          : TopicRuleDynamodbv2PutItem.fromMap(
              (map['putItem'] as Map).cast<String, dynamic>()),
      roleArn: map['roleArn'] as String,
    );
  }
}
