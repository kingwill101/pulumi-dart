// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBareMetalAdminCluster.
class GetBareMetalAdminClusterArgs {
  final Input<String> bareMetalAdminClusterId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

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
          Input.asInput<String>(map['bareMetalAdminClusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
