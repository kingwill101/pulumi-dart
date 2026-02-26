// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCluster.
class GetClusterArgs8 {
  final Input<String> clusterName;
  final Input<String>? project;
  final Input<String> region;

  GetClusterArgs8({
    required this.clusterName,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetClusterArgs8.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs8(
      clusterName: Input.asInput<String>(map['clusterName']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
