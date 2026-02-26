// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SourceRepository.
class SourceRepositoryArgs {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  final Input<String>? description;

  /// The name of the source repository. For more information about name requirements, see [Quotas for source repositories](https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html).
  final Input<String>? name;

  /// The name of the project in the CodeCatalyst space.
  ///
  /// The following arguments are optional:
  final Input<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the CodeCatalyst space.
  final Input<String> spaceName;

  SourceRepositoryArgs({
    this.description,
    this.name,
    required this.projectName,
    this.region,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['projectName'] = projectName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['spaceName'] = spaceName;
    return map;
  }

  factory SourceRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return SourceRepositoryArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      projectName: Input.asInput<String>(map['projectName']),
      region: Input.asOptionalInput<String>(map['region']),
      spaceName: Input.asInput<String>(map['spaceName']),
    );
  }
}
