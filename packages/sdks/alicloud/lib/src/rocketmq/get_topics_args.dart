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
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.tags,
  });

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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
