// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mns_get_topics_get_topics_args_doc}
/// Arguments for getTopics.
/// {@endtemplate}
/// {@macro pulumi_mns_get_topics_get_topics_args_doc}
class GetTopicsArgs {
  /// A string to filter resulting topics by their name prefixs.
  final pulumi.Input<String>? namePrefix;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetTopicsArgs].
  /// [namePrefix] A string to filter resulting topics by their name prefixs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetTopicsArgs({
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

  factory GetTopicsArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicsArgs(
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

