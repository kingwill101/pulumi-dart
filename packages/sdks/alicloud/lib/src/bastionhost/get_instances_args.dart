// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// A regex string to filter results by the instance description.
  final pulumi.Input<String>? descriptionRegex;
  /// Matched instance IDs to filter data source result.
  final pulumi.Input<List<String>>? ids;
  /// File name to persist data source output.
  final pulumi.Input<String>? outputFile;
  /// A map of tags assigned to the bastionhost instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInstancesArgs].
  /// [descriptionRegex] A regex string to filter results by the instance description.
  /// [ids] Matched instance IDs to filter data source result.
  /// [outputFile] File name to persist data source output.
  /// [tags] A map of tags assigned to the bastionhost instance.
  const GetInstancesArgs({
    this.descriptionRegex,
    this.ids,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      descriptionRegex: (() { final guardedValue = map['descriptionRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

