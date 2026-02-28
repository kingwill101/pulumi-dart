// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fsx_get_ontap_file_system_get_ontap_file_system_args_doc}
/// Arguments for getOntapFileSystem.
/// {@endtemplate}
/// {@macro pulumi_fsx_get_ontap_file_system_get_ontap_file_system_args_doc}
class GetOntapFileSystemArgs {
  /// Identifier of the file system (e.g. `fs-12345678`).
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The tags associated with the file system.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetOntapFileSystemArgs].
  /// [id] Identifier of the file system (e.g. `fs-12345678`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags associated with the file system.
  GetOntapFileSystemArgs({
    required String id,
    String? region,
    Map<String, String>? tags,
  })  : id = pulumi.Input.asInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetOntapFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemArgs(
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
