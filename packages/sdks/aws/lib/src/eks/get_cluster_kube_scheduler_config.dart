// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_kube_scheduler_config_node_resources_fit.dart';

class GetClusterKubeSchedulerConfig {
  /// Configuration for the NodeResourcesFit scheduler plugin.
  final pulumi.Input<List<GetClusterKubeSchedulerConfigNodeResourcesFit>> nodeResourcesFits;

  /// Creates a new [GetClusterKubeSchedulerConfig].
  /// [nodeResourcesFits] Configuration for the NodeResourcesFit scheduler plugin.
  const GetClusterKubeSchedulerConfig({
    required this.nodeResourcesFits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeResourcesFits': pulumi.Input.mapInputValue<List<GetClusterKubeSchedulerConfigNodeResourcesFit>, List<Map<String, dynamic>>>(nodeResourcesFits, (value) => pulumi.Input.encodeList<GetClusterKubeSchedulerConfigNodeResourcesFit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterKubeSchedulerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeSchedulerConfig(
      nodeResourcesFits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterKubeSchedulerConfigNodeResourcesFit>(map['nodeResourcesFits']!, (value) => GetClusterKubeSchedulerConfigNodeResourcesFit.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
