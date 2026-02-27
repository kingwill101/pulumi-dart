// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTag.
class GetTagArgs {
  /// The location of the artifact registry.
  final pulumi.Input<String> location;

  /// The name of the package.
  final pulumi.Input<String> packageName;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// The name of the tag.
  final pulumi.Input<String> tagName;

  GetTagArgs({
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['packageName'] = packageName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['tagName'] = tagName;
    return map;
  }

  factory GetTagArgs.fromMap(Map<String, dynamic> map) {
    return GetTagArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      packageName: pulumi.Input.asInput<String>(map['packageName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      tagName: pulumi.Input.asInput<String>(map['tagName']),
    );
  }
}
