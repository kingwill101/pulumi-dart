// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterAlloydbV1betaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  GetClusterAlloydbV1betaArgs({
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

  factory GetClusterAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterAlloydbV1betaArgs(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
