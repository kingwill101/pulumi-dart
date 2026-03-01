// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_topics_get_topics_args_doc}
/// Arguments for getTopics.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_topics_get_topics_args_doc}
class GetTopicsArgs {
  /// A list of ALIKAFKA Topics IDs, It is formatted to `<instance_id>:<topic>`.
  final pulumi.Input<List<String>>? ids;
  /// ID of the instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by the topic name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// A topic to filter results by the topic name.
  final pulumi.Input<String>? topic;

  /// Creates a new [GetTopicsArgs].
  /// [ids] A list of ALIKAFKA Topics IDs, It is formatted to `<instance_id>:<topic>`.
  /// [instanceId] ID of the instance.
  /// [nameRegex] A regex string to filter results by the topic name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [topic] A topic to filter results by the topic name.
  GetTopicsArgs({
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? topic,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      topic = pulumi.Input.asOptionalInput<String>(topic);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'topic': ?topic,
    };
  }

  factory GetTopicsArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

