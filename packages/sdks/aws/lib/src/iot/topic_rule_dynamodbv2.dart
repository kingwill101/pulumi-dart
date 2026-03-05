// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_dynamodbv2_put_item.dart';

class TopicRuleDynamodbv2 {
  /// Configuration block with DynamoDB Table to which the message will be written. Nested arguments below.
  final pulumi.Input<TopicRuleDynamodbv2PutItem>? putItem;
  /// The ARN of the IAM role that grants access to the DynamoDB table.
  final pulumi.Input<String> roleArn;

  /// Creates a new [TopicRuleDynamodbv2].
  /// [putItem] Configuration block with DynamoDB Table to which the message will be written. Nested arguments below.
  /// [roleArn] The ARN of the IAM role that grants access to the DynamoDB table.
  TopicRuleDynamodbv2({
    this.putItem,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'putItem': ?pulumi.Input.mapOptionalInputValue<TopicRuleDynamodbv2PutItem, Map<String, dynamic>>(putItem, (value) => value.toMap()),
      'roleArn': roleArn,
    };
  }

  factory TopicRuleDynamodbv2.fromMap(Map<String, dynamic> map) {
    return TopicRuleDynamodbv2(
      putItem: (() { final guardedValue = map['putItem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleDynamodbv2PutItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

