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
    String? description,
    required String displayName,
    String? region,
    required String spaceName,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        region = pulumi.Input.asOptionalInput<String>(region),
        spaceName = pulumi.Input.asInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['spaceName'] = spaceName;
    return map;
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      spaceName: map['spaceName'] as String,
    );
  }
}
