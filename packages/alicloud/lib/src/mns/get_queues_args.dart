// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mns_get_queues_get_queues_args_doc}
/// Arguments for getQueues.
/// {@endtemplate}
/// {@macro pulumi_mns_get_queues_get_queues_args_doc}
class GetQueuesArgs {
  /// A string to filter resulting queues by their name prefixs.
  final pulumi.Input<String>? namePrefix;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetQueuesArgs].
  /// [namePrefix] A string to filter resulting queues by their name prefixs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetQueuesArgs({
    String? namePrefix,
    String? outputFile,
  }) :
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namePrefix': ?namePrefix,
      'outputFile': ?outputFile,
    };
  }

  factory GetQueuesArgs.fromMap(Map<String, dynamic> map) {
    return GetQueuesArgs(
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

