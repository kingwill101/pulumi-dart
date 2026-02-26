// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_private_cluster_config_master_global_access_config/cluster_private_cluster_config_master_global_access_config.dart';

class ClusterPrivateClusterConfig {
  /// When <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the cluster's private
  /// endpoint is used as the cluster endpoint and access through the public endpoint
  /// is disabled. When <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, either endpoint can be used. This field only applies
  /// to private clusters, when <span pulumi-lang-nodejs="`enablePrivateNodes`" pulumi-lang-dotnet="`EnablePrivateNodes`" pulumi-lang-go="`enablePrivateNodes`" pulumi-lang-python="`enable_private_nodes`" pulumi-lang-yaml="`enablePrivateNodes`" pulumi-lang-java="`enablePrivateNodes`">`enable_private_nodes`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? enablePrivateEndpoint;

  /// Enables the private cluster feature,
  /// creating a private endpoint on the cluster. In a private cluster, nodes only
  /// have RFC 1918 private addresses and communicate with the master's private
  /// endpoint via private networking.
  final bool? enablePrivateNodes;

  /// Controls cluster master global
  /// access settings. If unset, the provider will no longer manage this field and will
  /// not modify the previously-set value. Structure is documented below.
  final ClusterPrivateClusterConfigMasterGlobalAccessConfig?
      masterGlobalAccessConfig;

  /// The IP range in CIDR notation to use for
  /// the hosted master network. This range will be used for assigning private IP
  /// addresses to the cluster master(s) and the ILB VIP. This range must not overlap
  /// with any other ranges in use within the cluster's network, and it must be a /28
  /// subnet. See [Private Cluster Limitations](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters#req_res_lim)
  /// for more details. This field only applies to private clusters, when
  /// <span pulumi-lang-nodejs="`enablePrivateNodes`" pulumi-lang-dotnet="`EnablePrivateNodes`" pulumi-lang-go="`enablePrivateNodes`" pulumi-lang-python="`enable_private_nodes`" pulumi-lang-yaml="`enablePrivateNodes`" pulumi-lang-java="`enablePrivateNodes`">`enable_private_nodes`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? masterIpv4CidrBlock;

  /// The name of the peering between this cluster and the Google owned VPC.
  final String? peeringName;

  /// The internal IP address of this cluster's master endpoint.
  final String? privateEndpoint;

  /// Subnetwork in cluster's network where master's endpoint will be provisioned.
  final String? privateEndpointSubnetwork;

  /// The external IP address of this cluster's master endpoint.
  ///
  /// !> The Google provider is unable to validate certain configurations of
  /// <span pulumi-lang-nodejs="`privateClusterConfig`" pulumi-lang-dotnet="`PrivateClusterConfig`" pulumi-lang-go="`privateClusterConfig`" pulumi-lang-python="`private_cluster_config`" pulumi-lang-yaml="`privateClusterConfig`" pulumi-lang-java="`privateClusterConfig`">`private_cluster_config`</span> when <span pulumi-lang-nodejs="`enablePrivateNodes`" pulumi-lang-dotnet="`EnablePrivateNodes`" pulumi-lang-go="`enablePrivateNodes`" pulumi-lang-python="`enable_private_nodes`" pulumi-lang-yaml="`enablePrivateNodes`" pulumi-lang-java="`enablePrivateNodes`">`enable_private_nodes`</span> is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. It's
  /// recommended that you omit the block entirely if the field is not set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? publicEndpoint;

  ClusterPrivateClusterConfig({
    this.enablePrivateEndpoint,
    this.enablePrivateNodes,
    this.masterGlobalAccessConfig,
    this.masterIpv4CidrBlock,
    this.peeringName,
    this.privateEndpoint,
    this.privateEndpointSubnetwork,
    this.publicEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enablePrivateEndpointValue = enablePrivateEndpoint;
    if (enablePrivateEndpointValue != null) {
      map['enablePrivateEndpoint'] = enablePrivateEndpointValue;
    }
    final enablePrivateNodesValue = enablePrivateNodes;
    if (enablePrivateNodesValue != null) {
      map['enablePrivateNodes'] = enablePrivateNodesValue;
    }
    final masterGlobalAccessConfigValue = masterGlobalAccessConfig;
    if (masterGlobalAccessConfigValue != null) {
      map['masterGlobalAccessConfig'] = masterGlobalAccessConfigValue.toMap();
    }
    final masterIpv4CidrBlockValue = masterIpv4CidrBlock;
    if (masterIpv4CidrBlockValue != null) {
      map['masterIpv4CidrBlock'] = masterIpv4CidrBlockValue;
    }
    final peeringNameValue = peeringName;
    if (peeringNameValue != null) {
      map['peeringName'] = peeringNameValue;
    }
    final privateEndpointValue = privateEndpoint;
    if (privateEndpointValue != null) {
      map['privateEndpoint'] = privateEndpointValue;
    }
    final privateEndpointSubnetworkValue = privateEndpointSubnetwork;
    if (privateEndpointSubnetworkValue != null) {
      map['privateEndpointSubnetwork'] = privateEndpointSubnetworkValue;
    }
    final publicEndpointValue = publicEndpoint;
    if (publicEndpointValue != null) {
      map['publicEndpoint'] = publicEndpointValue;
    }
    return map;
  }

  factory ClusterPrivateClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPrivateClusterConfig(
      enablePrivateEndpoint: map['enablePrivateEndpoint'] == null
          ? null
          : map['enablePrivateEndpoint'] as bool,
      enablePrivateNodes: map['enablePrivateNodes'] == null
          ? null
          : map['enablePrivateNodes'] as bool,
      masterGlobalAccessConfig: map['masterGlobalAccessConfig'] == null
          ? null
          : ClusterPrivateClusterConfigMasterGlobalAccessConfig.fromMap(
              (map['masterGlobalAccessConfig'] as Map).cast<String, dynamic>()),
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] == null
          ? null
          : map['masterIpv4CidrBlock'] as String,
      peeringName:
          map['peeringName'] == null ? null : map['peeringName'] as String,
      privateEndpoint: map['privateEndpoint'] == null
          ? null
          : map['privateEndpoint'] as String,
      privateEndpointSubnetwork: map['privateEndpointSubnetwork'] == null
          ? null
          : map['privateEndpointSubnetwork'] as String,
      publicEndpoint: map['publicEndpoint'] == null
          ? null
          : map['publicEndpoint'] as String,
    );
  }
}
