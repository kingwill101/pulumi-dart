// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterBigtableadminV2Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetClusterBigtableadminV2Args({
    required this.clusterId,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetClusterBigtableadminV2Args.fromMap(Map<String, dynamic> map) {
    return GetClusterBigtableadminV2Args(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
