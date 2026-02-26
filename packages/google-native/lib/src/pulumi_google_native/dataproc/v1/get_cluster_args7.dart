// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCluster.
class GetClusterArgs7 {
  final Input<String> clusterName;
  final Input<String>? project;
  final Input<String> region;

  GetClusterArgs7({
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

  factory GetClusterArgs7.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs7(
      clusterName: Input.asInput<String>(map['clusterName']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
