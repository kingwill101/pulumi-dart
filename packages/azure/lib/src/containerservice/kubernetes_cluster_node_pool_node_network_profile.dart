// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_node_pool_node_network_profile_allowed_host_port.dart';

class KubernetesClusterNodePoolNodeNetworkProfile {
  /// One or more `allowed_host_ports` blocks as defined below.
  final List<KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort>? allowedHostPorts;
  /// A list of Application Security Group IDs which should be associated with this Node Pool.
  final List<String>? applicationSecurityGroupIds;
  /// Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created.
  ///
  /// > **Note:** To set the application security group, you must allow at least one host port. Without this, the configuration will fail silently. [Learn More](https://learn.microsoft.com/en-us/azure/aks/use-node-public-ips#allow-host-port-connections-and-add-node-pools-to-application-security-groups).
  final Map<String, String>? nodePublicIpTags;

  /// Creates a new [KubernetesClusterNodePoolNodeNetworkProfile].
  /// [allowedHostPorts] One or more `allowed_host_ports` blocks as defined below.
  /// [applicationSecurityGroupIds] A list of Application Security Group IDs which should be associated with this Node Pool.
  /// [nodePublicIpTags] Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created.
  KubernetesClusterNodePoolNodeNetworkProfile({
    this.allowedHostPorts,
    this.applicationSecurityGroupIds,
    this.nodePublicIpTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHostPorts': ?allowedHostPorts == null ? null : pulumi.Input.encodeList<KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort, Map<String, dynamic>>(allowedHostPorts!, (value) => value.toMap()),
      'applicationSecurityGroupIds': ?applicationSecurityGroupIds,
      'nodePublicIpTags': ?nodePublicIpTags,
    };
  }

  factory KubernetesClusterNodePoolNodeNetworkProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolNodeNetworkProfile(
      allowedHostPorts: map['allowedHostPorts'] == null ? null : pulumi.Input.decodeList<KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort>(map['allowedHostPorts'], (value) => KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroupIds: map['applicationSecurityGroupIds'] == null ? null : (map['applicationSecurityGroupIds'] as List).cast<String>(),
      nodePublicIpTags: map['nodePublicIpTags'] == null ? null : (map['nodePublicIpTags'] as Map).cast<String, String>(),
    );
  }
}

