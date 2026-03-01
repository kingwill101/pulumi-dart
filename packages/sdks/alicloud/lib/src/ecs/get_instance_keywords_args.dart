// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_instance_keywords_get_instance_keywords_args_doc}
/// Arguments for getInstanceKeywords.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_instance_keywords_get_instance_keywords_args_doc}
class GetInstanceKeywordsArgs {
  /// The type of reserved keyword to query. Valid values: `account`, `database`.
  final pulumi.Input<String> key;
  /// File name where to save data source results (after running `pulumi up`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstanceKeywordsArgs].
  /// [key] The type of reserved keyword to query. Valid values: `account`, `database`.
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  GetInstanceKeywordsArgs({
    required pulumi.Output<String> key,
    pulumi.Output<String>? outputFile,
  }) :
      key = pulumi.Input.asInput<String>(key),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceKeywordsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceKeywordsArgs(
      key: pulumi.Output.create<String>(map['key'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

