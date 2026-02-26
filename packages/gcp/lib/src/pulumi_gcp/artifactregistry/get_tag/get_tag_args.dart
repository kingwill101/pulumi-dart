// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTag.
class GetTagArgs {
  /// The location of the artifact registry.
  final Input<String> location;

  /// The name of the package.
  final Input<String> packageName;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The last part of the repository name to fetch from.
  final Input<String> repositoryId;

  /// The name of the tag.
  final Input<String> tagName;

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
      location: Input.asInput<String>(map['location']),
      packageName: Input.asInput<String>(map['packageName']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      tagName: Input.asInput<String>(map['tagName']),
    );
  }
}
