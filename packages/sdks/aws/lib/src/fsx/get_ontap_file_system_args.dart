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
    required this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetOntapFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemArgs(
      id: (map['id'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

