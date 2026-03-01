// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservice_get_directory_get_directory_args_doc}
/// Arguments for getDirectory.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_get_directory_get_directory_args_doc}
class GetDirectoryArgs {
  /// ID of the directory.
  final pulumi.Input<String> directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags assigned to the directory/connector.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDirectoryArgs].
  /// [directoryId] ID of the directory.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the directory/connector.
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

