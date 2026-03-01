// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleElasticsearch {
  /// The endpoint of your Elasticsearch domain.
  final String endpoint;

  /// The unique identifier for the document you are storing.
  final String id;

  /// The Elasticsearch index where you want to store your data.
  final String index;

  /// The IAM role ARN that has access to Elasticsearch.
  final String roleArn;

  /// The type of document you are storing.
  final String type;

  /// Creates a new [TopicRuleElasticsearch].
  /// [endpoint] The endpoint of your Elasticsearch domain.
  /// [id] The unique identifier for the document you are storing.
  /// [index] The Elasticsearch index where you want to store your data.
  /// [roleArn] The IAM role ARN that has access to Elasticsearch.
  /// [type] The type of document you are storing.
  TopicRuleElasticsearch({
    required this.endpoint,
    required this.id,
    required this.index,
    required this.roleArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'id': id,
      'index': index,
      'roleArn': roleArn,
      'type': type,
    };
  }

  factory TopicRuleElasticsearch.fromMap(Map<String, dynamic> map) {
    return TopicRuleElasticsearch(
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      index: map['index'] as String,
      roleArn: map['roleArn'] as String,
      type: map['type'] as String,
    );
  }
}
