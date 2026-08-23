// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_kube_scheduler_config_node_resources_fit.dart';

class ClusterKubeSchedulerConfig {
  /// Configuration block for the NodeResourcesFit scheduler plugin. Detailed below.
  final pulumi.Input<ClusterKubeSchedulerConfigNodeResourcesFit>? nodeResourcesFit;

  /// Creates a new [ClusterKubeSchedulerConfig].
  /// [nodeResourcesFit] Configuration block for the NodeResourcesFit scheduler plugin. Detailed below.
  const ClusterKubeSchedulerConfig({
    this.nodeResourcesFit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeResourcesFit': ?pulumi.Input.mapOptionalInputValue<ClusterKubeSchedulerConfigNodeResourcesFit, Map<String, dynamic>>(nodeResourcesFit, (value) => value.toMap()),
    };
  }

  factory ClusterKubeSchedulerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubeSchedulerConfig(
      nodeResourcesFit: (() { final guardedValue = map['nodeResourcesFit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterKubeSchedulerConfigNodeResourcesFit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
