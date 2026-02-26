// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCluster.
class GetClusterArgs2 {
  final Input<String> clusterId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetClusterArgs2({
    required this.clusterId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
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

  factory GetClusterArgs2.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs2(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
