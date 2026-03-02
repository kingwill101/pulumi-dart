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
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.topic,
  });

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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
    );
  }
}

