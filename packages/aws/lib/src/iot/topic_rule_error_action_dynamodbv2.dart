// ignore_for_file: unused_element, unnecessary_cast

import 'topic_rule_error_action_dynamodbv2_put_item.dart';

class TopicRuleErrorActionDynamodbv2 {
  /// Configuration block with DynamoDB Table to which the message will be written. Nested arguments below.
  final TopicRuleErrorActionDynamodbv2PutItem? putItem;

  /// The ARN of the IAM role that grants access to the DynamoDB table.
  final String roleArn;

  /// Creates a new [TopicRuleErrorActionDynamodbv2].
  /// [putItem] Configuration block with DynamoDB Table to which the message will be written. Nested arguments below.
  /// [roleArn] The ARN of the IAM role that grants access to the DynamoDB table.
  TopicRuleErrorActionDynamodbv2({this.putItem, required this.roleArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'putItem': ?putItem == null ? null : putItem!.toMap(),
      'roleArn': roleArn,
    };
  }

  factory TopicRuleErrorActionDynamodbv2.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionDynamodbv2(
      putItem: map['putItem'] == null
          ? null
          : TopicRuleErrorActionDynamodbv2PutItem.fromMap(
              (map['putItem'] as Map).cast<String, dynamic>(),
            ),
      roleArn: map['roleArn'] as String,
    );
  }
}
