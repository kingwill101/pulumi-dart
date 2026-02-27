// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Project.
class ProjectCodecatalystArgs {
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

  ProjectCodecatalystArgs({
    this.description,
    required this.displayName,
    this.region,
    required this.spaceName,
  });

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

  factory ProjectCodecatalystArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCodecatalystArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      spaceName: pulumi.Input.asInput<String>(map['spaceName']),
    );
  }
}
