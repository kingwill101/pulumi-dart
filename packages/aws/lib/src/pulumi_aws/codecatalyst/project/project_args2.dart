// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Project.
class ProjectArgs2 {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  final Input<String>? description;

  /// The friendly name of the project that will be displayed to users.
  ///
  /// The following arguments are optional:
  final Input<String> displayName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the space.
  final Input<String> spaceName;

  ProjectArgs2({
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

  factory ProjectArgs2.fromMap(Map<String, dynamic> map) {
    return ProjectArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      region: Input.asOptionalInput<String>(map['region']),
      spaceName: Input.asInput<String>(map['spaceName']),
    );
  }
}
