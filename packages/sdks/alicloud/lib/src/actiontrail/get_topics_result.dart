// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topics_topic.dart';

/// Result data returned by getTopics.
class GetTopicsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The instance_id of the instance.
  final String instanceId;
  final String? nameRegex;
  /// A list of topic names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The name of the topic.
  final String? topic;
  /// A list of topics. Each element contains the following attributes:
  final List<GetTopicsTopic> topics;
  final int totalCount;

  /// Creates a new [GetTopicsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] The instance_id of the instance.
  /// [nameRegex] Optional.
  /// [names] A list of topic names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [topic] The name of the topic.
  /// [topics] A list of topics. Each element contains the following attributes:
  /// [totalCount] Required.
  GetTopicsResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.topic,
    required this.topics,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'topic': ?topic,
      'topics': pulumi.Input.encodeList<GetTopicsTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
      'totalCount': totalCount,
    };
  }

  factory GetTopicsResult.fromMap(Map<String, dynamic> map) {
    return GetTopicsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      topic: map['topic'] == null ? null : map['topic'] as String,
      topics: pulumi.Input.decodeList<GetTopicsTopic>(map['topics'], (value) => GetTopicsTopic.fromMap((value as Map).cast<String, dynamic>())),
      totalCount: map['totalCount'] as int,
    );
  }
}

