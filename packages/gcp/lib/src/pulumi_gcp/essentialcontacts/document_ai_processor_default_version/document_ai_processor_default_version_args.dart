// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DocumentAiProcessorDefaultVersion.
class DocumentAiProcessorDefaultVersionArgs {
  /// The processor to set the version on.
  final Input<String> processor;

  /// The version to set. Using `stable` or `rc` will cause the API to return the latest version in that release channel.
  /// Apply `lifecycle.ignore_changes` to the `version` field to suppress this diff.
  final Input<String> version;

  DocumentAiProcessorDefaultVersionArgs({
    required this.processor,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['processor'] = processor;
    map['version'] = version;
    return map;
  }

  factory DocumentAiProcessorDefaultVersionArgs.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiProcessorDefaultVersionArgs(
      processor: Input.asInput<String>(map['processor']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
