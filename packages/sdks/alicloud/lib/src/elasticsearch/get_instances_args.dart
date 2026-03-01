// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsearch_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_elasticsearch_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  final pulumi.Input<String>? descriptionRegex;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? version;

  /// Creates a new [GetInstancesArgs].
  /// [descriptionRegex] Optional.
  /// [ids] Optional.
  /// [outputFile] Optional.
  /// [tags] Optional.
  /// [version] Optional.
  GetInstancesArgs({
    pulumi.Output<String>? descriptionRegex,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      descriptionRegex = pulumi.Input.asOptionalInput<String>(descriptionRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      descriptionRegex: map['descriptionRegex'] == null ? null : pulumi.Output.create<String>(map['descriptionRegex'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

