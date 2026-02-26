// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleDynamodbv2PutItem {
  /// The name of the DynamoDB table.
  final String tableName;

  TopicRuleDynamodbv2PutItem({
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tableName'] = tableName;
    return map;
  }

  factory TopicRuleDynamodbv2PutItem.fromMap(Map<String, dynamic> map) {
    return TopicRuleDynamodbv2PutItem(
      tableName: map['tableName'] as String,
    );
  }
}
