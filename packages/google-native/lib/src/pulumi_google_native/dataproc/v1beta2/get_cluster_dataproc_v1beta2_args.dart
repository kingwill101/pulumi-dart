// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterDataprocV1beta2Args {
  final pulumi.Input<String> clusterName;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetClusterDataprocV1beta2Args({
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

  factory GetClusterDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetClusterDataprocV1beta2Args(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
