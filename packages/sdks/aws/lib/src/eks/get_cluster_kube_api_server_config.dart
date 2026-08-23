// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_kube_api_server_config_service_node_port_range.dart';

class GetClusterKubeApiServerConfig {
  /// The duration that Kubernetes events are retained.
  final pulumi.Input<String> eventTtl;
  /// The port range for NodePort services.
  final pulumi.Input<List<GetClusterKubeApiServerConfigServiceNodePortRange>> serviceNodePortRanges;

  /// Creates a new [GetClusterKubeApiServerConfig].
  /// [eventTtl] The duration that Kubernetes events are retained.
  /// [serviceNodePortRanges] The port range for NodePort services.
  const GetClusterKubeApiServerConfig({
    required this.eventTtl,
    required this.serviceNodePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTtl': eventTtl,
      'serviceNodePortRanges': pulumi.Input.mapInputValue<List<GetClusterKubeApiServerConfigServiceNodePortRange>, List<Map<String, dynamic>>>(serviceNodePortRanges, (value) => pulumi.Input.encodeList<GetClusterKubeApiServerConfigServiceNodePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterKubeApiServerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeApiServerConfig(
      eventTtl: pulumi.Input.fromValue(map['eventTtl'] as String),
      serviceNodePortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterKubeApiServerConfigServiceNodePortRange>(map['serviceNodePortRanges']!, (value) => GetClusterKubeApiServerConfigServiceNodePortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
