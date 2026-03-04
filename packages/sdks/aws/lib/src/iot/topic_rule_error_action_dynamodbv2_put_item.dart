// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionDynamodbv2PutItem {
  /// The name of the DynamoDB table.
  final pulumi.Input<String> tableName;

  /// Creates a new [TopicRuleErrorActionDynamodbv2PutItem].
  /// [tableName] The name of the DynamoDB table.
  TopicRuleErrorActionDynamodbv2PutItem({required this.tableName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tableName': tableName};
  }

  factory TopicRuleErrorActionDynamodbv2PutItem.fromMap(
    Map<String, dynamic> map,
  ) {
    return TopicRuleErrorActionDynamodbv2PutItem(
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
