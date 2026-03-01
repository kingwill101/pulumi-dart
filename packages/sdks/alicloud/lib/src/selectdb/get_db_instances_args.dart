// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_selectdb_get_db_instances_get_db_instances_args_doc}
/// Arguments for getDbInstances.
/// {@endtemplate}
/// {@macro pulumi_selectdb_get_db_instances_get_db_instances_args_doc}
class GetDbInstancesArgs {
  /// A list of DBInstance IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A mapping of tags to assign to the resource. Used for instance searching.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDbInstancesArgs].
  /// [ids] A list of DBInstance IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A mapping of tags to assign to the resource. Used for instance searching.
  GetDbInstancesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetDbInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbInstancesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

