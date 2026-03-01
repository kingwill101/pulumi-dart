// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_get_topics_get_topics_args_doc}
/// Arguments for getTopics.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_get_topics_get_topics_args_doc}
class GetTopicsArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of topic IDs to filter results.
  final pulumi.Input<List<String>>? ids;
  /// ID of the ONS Instance that owns the topics.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by the topic name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A map of tags assigned to the Ons instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetTopicsArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of topic IDs to filter results.
  /// [instanceId] ID of the ONS Instance that owns the topics.
  /// [nameRegex] A regex string to filter results by the topic name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A map of tags assigned to the Ons instance.
  GetTopicsArgs({
    bool? enableDetails,
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
    Map<String, String>? tags,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetTopicsArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicsArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

