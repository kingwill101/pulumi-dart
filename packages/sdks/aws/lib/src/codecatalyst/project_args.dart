// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codecatalyst_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_codecatalyst_project_project_args_doc}
class ProjectArgs {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  final pulumi.Input<String>? description;
  /// The friendly name of the project that will be displayed to users.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> displayName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the space.
  final pulumi.Input<String> spaceName;

  /// Creates a new [ProjectArgs].
  /// [description] The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  /// [displayName] The friendly name of the project that will be displayed to users.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceName] The name of the space.
  ProjectArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? region,
    required pulumi.Output<String> spaceName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      region = pulumi.Input.asOptionalInput<String>(region),
      spaceName = pulumi.Input.asInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'region': ?region,
      'spaceName': spaceName,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

