// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspaces_get_directory_get_directory_args_doc}
/// Arguments for getDirectory.
/// {@endtemplate}
/// {@macro pulumi_workspaces_get_directory_get_directory_args_doc}
class GetDirectoryArgs {
  /// Directory identifier for registration in WorkSpaces service.
  final pulumi.Input<String> directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags assigned to the WorkSpaces directory.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDirectoryArgs].
  /// [directoryId] Directory identifier for registration in WorkSpaces service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the WorkSpaces directory.
  GetDirectoryArgs({
    required this.directoryId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return GetDirectoryArgs(
      directoryId: (map['directoryId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

