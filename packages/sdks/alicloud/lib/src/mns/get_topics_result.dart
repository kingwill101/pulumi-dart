// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topics_topic.dart';

/// Result data returned by getTopics.
class GetTopicsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? namePrefix;
  /// A list of topic names.
  final List<String> names;
  final String? outputFile;
  /// A list of topics. Each element contains the following attributes:
  final List<GetTopicsTopic> topics;

  /// Creates a new [GetTopicsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [names] A list of topic names.
  /// [outputFile] Optional.
  /// [topics] A list of topics. Each element contains the following attributes:
  GetTopicsResult({
    required this.id,
    this.namePrefix,
    required this.names,
    this.outputFile,
    required this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namePrefix': ?namePrefix,
      'names': names,
      'outputFile': ?outputFile,
      'topics': pulumi.Input.encodeList<GetTopicsTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
    };
  }

  factory GetTopicsResult.fromMap(Map<String, dynamic> map) {
    return GetTopicsResult(
      id: map['id'] as String,
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topics: pulumi.Input.decodeList<GetTopicsTopic>(map['topics']!, (value) => GetTopicsTopic.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

