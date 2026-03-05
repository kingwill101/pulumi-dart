// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_topics_topic.dart';

/// Result data returned by getServiceTopics.
class GetServiceTopicsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Topic names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The name of the topic.
  final String? topicName;
  /// A list of Topics. Each element contains the following attributes:
  final List<GetServiceTopicsTopic> topics;

  /// Creates a new [GetServiceTopicsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Topic names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [topicName] The name of the topic.
  /// [topics] A list of Topics. Each element contains the following attributes:
  GetServiceTopicsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.topicName,
    required this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'topicName': ?topicName,
      'topics': pulumi.Input.encodeList<GetServiceTopicsTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
    };
  }

  factory GetServiceTopicsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceTopicsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topics: pulumi.Input.decodeList<GetServiceTopicsTopic>(map['topics']!, (value) => GetServiceTopicsTopic.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

