// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topics_topic.dart';

/// Result data returned by getTopics.
class GetTopicsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  /// A list of topic names.
  final List<String> names;
  final String? outputFile;
  /// A map of tags assigned to the Ons instance.
  final Map<String, String>? tags;
  /// A list of topics. Each element contains the following attributes:
  final List<GetTopicsTopic> topics;

  /// Creates a new [GetTopicsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] A list of topic names.
  /// [outputFile] Optional.
  /// [tags] A map of tags assigned to the Ons instance.
  /// [topics] A list of topics. Each element contains the following attributes:
  const GetTopicsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.tags,
    required this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tags': ?tags,
      'topics': pulumi.Input.encodeList<GetTopicsTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
    };
  }

  factory GetTopicsResult.fromMap(Map<String, dynamic> map) {
    return GetTopicsResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      topics: pulumi.Input.decodeList<GetTopicsTopic>(map['topics']!, (value) => GetTopicsTopic.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

