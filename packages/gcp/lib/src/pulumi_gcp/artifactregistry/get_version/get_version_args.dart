// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVersion.
class GetVersionArgs {
  /// The location of the artifact registry.
  final Input<String> location;

  /// The name of the package.
  final Input<String> packageName;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The last part of the repository name to fetch from.
  final Input<String> repositoryId;

  /// The name of the version.
  final Input<String> versionName;

  /// The view, which determines what version information is returned in a response. Possible values are `"BASIC"` and `"FULL"`. Defaults to `"BASIC"`.
  final Input<String>? view;

  GetVersionArgs({
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.versionName,
    this.view,
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
    map['versionName'] = versionName;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      location: Input.asInput<String>(map['location']),
      packageName: Input.asInput<String>(map['packageName']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      versionName: Input.asInput<String>(map['versionName']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
