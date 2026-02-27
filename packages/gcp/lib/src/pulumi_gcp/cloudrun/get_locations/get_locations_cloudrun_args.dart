// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLocations.
class GetLocationsCloudrunArgs {
  /// The project to list versions for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetLocationsCloudrunArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLocationsCloudrunArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationsCloudrunArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
