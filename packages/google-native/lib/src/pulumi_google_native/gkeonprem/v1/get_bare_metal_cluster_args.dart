// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBareMetalCluster.
class GetBareMetalClusterArgs {
  final Input<String> bareMetalClusterId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetBareMetalClusterArgs({
    required this.bareMetalClusterId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bareMetalClusterId'] = bareMetalClusterId;
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

  factory GetBareMetalClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalClusterArgs(
      bareMetalClusterId: Input.asInput<String>(map['bareMetalClusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
