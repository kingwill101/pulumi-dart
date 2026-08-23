// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_kube_api_server_config_service_node_port_range.dart';

class ClusterKubeApiServerConfig {
  /// The duration that Kubernetes events are retained. Must be a single-unit duration (e.g., `30m`, `1h`). Valid range: `10m` to `60m`. Default is `1h`.
  final pulumi.Input<String>? eventTtl;
  /// Configuration block for the port range available for NodePort services. Detailed below.
  final pulumi.Input<ClusterKubeApiServerConfigServiceNodePortRange>? serviceNodePortRange;

  /// Creates a new [ClusterKubeApiServerConfig].
  /// [eventTtl] The duration that Kubernetes events are retained. Must be a single-unit duration (e.g., `30m`, `1h`). Valid range: `10m` to `60m`. Default is `1h`.
  /// [serviceNodePortRange] Configuration block for the port range available for NodePort services. Detailed below.
  const ClusterKubeApiServerConfig({
    this.eventTtl,
    this.serviceNodePortRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTtl': ?eventTtl,
      'serviceNodePortRange': ?pulumi.Input.mapOptionalInputValue<ClusterKubeApiServerConfigServiceNodePortRange, Map<String, dynamic>>(serviceNodePortRange, (value) => value.toMap()),
    };
  }

  factory ClusterKubeApiServerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubeApiServerConfig(
      eventTtl: (() { final guardedValue = map['eventTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceNodePortRange: (() { final guardedValue = map['serviceNodePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterKubeApiServerConfigServiceNodePortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
