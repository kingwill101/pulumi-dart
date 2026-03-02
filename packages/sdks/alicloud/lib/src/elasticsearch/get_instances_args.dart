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
    this.descriptionRegex,
    this.ids,
    this.outputFile,
    this.tags,
    this.version,
  });

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
      descriptionRegex: map['descriptionRegex'] == null ? null : (map['descriptionRegex']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

