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
    required pulumi.Output<String> directoryId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      directoryId = pulumi.Input.asInput<String>(directoryId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return GetDirectoryArgs(
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

