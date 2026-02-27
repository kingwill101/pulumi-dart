// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBareMetalAdminCluster.
class GetBareMetalAdminClusterArgs {
  final pulumi.Input<String> bareMetalAdminClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  GetBareMetalAdminClusterArgs({
    required this.bareMetalAdminClusterId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bareMetalAdminClusterId'] = bareMetalAdminClusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetBareMetalAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalAdminClusterArgs(
      bareMetalAdminClusterId:
          pulumi.Input.asInput<String>(map['bareMetalAdminClusterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
