// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersion.
class GetVersionArgs {
  /// The location of the artifact registry.
  final pulumi.Input<String> location;

  /// The name of the package.
  final pulumi.Input<String> packageName;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// The name of the version.
  final pulumi.Input<String> versionName;

  /// The view, which determines what version information is returned in a response. Possible values are `"BASIC"` and `"FULL"`. Defaults to `"BASIC"`.
  final pulumi.Input<String>? view;

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
      location: pulumi.Input.asInput<String>(map['location']),
      packageName: pulumi.Input.asInput<String>(map['packageName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      versionName: pulumi.Input.asInput<String>(map['versionName']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
