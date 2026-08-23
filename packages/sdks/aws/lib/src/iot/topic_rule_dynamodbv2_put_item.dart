// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleDynamodbv2PutItem {
  /// The name of the DynamoDB table.
  final pulumi.Input<String> tableName;

  /// Creates a new [TopicRuleDynamodbv2PutItem].
  /// [tableName] The name of the DynamoDB table.
  const TopicRuleDynamodbv2PutItem({
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableName': tableName,
    };
  }

  factory TopicRuleDynamodbv2PutItem.fromMap(Map<String, dynamic> map) {
    return TopicRuleDynamodbv2PutItem(
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
