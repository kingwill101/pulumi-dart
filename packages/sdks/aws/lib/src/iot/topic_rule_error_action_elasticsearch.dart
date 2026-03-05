// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionElasticsearch {
  /// The endpoint of your Elasticsearch domain.
  final pulumi.Input<String> endpoint;
  /// The unique identifier for the document you are storing.
  final pulumi.Input<String> id;
  /// The Elasticsearch index where you want to store your data.
  final pulumi.Input<String> index;
  /// The IAM role ARN that has access to Elasticsearch.
  final pulumi.Input<String> roleArn;
  /// The type of document you are storing.
  final pulumi.Input<String> type;

  /// Creates a new [TopicRuleErrorActionElasticsearch].
  /// [endpoint] The endpoint of your Elasticsearch domain.
  /// [id] The unique identifier for the document you are storing.
  /// [index] The Elasticsearch index where you want to store your data.
  /// [roleArn] The IAM role ARN that has access to Elasticsearch.
  /// [type] The type of document you are storing.
  TopicRuleErrorActionElasticsearch({
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

  factory TopicRuleErrorActionElasticsearch.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionElasticsearch(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      index: pulumi.Input.fromValue(map['index'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

