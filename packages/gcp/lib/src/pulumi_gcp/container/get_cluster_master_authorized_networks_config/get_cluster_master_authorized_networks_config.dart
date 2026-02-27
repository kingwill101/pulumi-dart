// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_master_authorized_networks_config_cidr_block/get_cluster_master_authorized_networks_config_cidr_block.dart';

class GetClusterMasterAuthorizedNetworksConfig {
  /// External networks that can access the Kubernetes cluster master through HTTPS.
  final List<GetClusterMasterAuthorizedNetworksConfigCidrBlock> cidrBlocks;

  /// Whether Kubernetes master is accessible via Google Compute Engine Public IPs.
  final bool gcpPublicCidrsAccessEnabled;

  /// Whether authorized networks is enforced on the private endpoint or not. Defaults to false.
  final bool privateEndpointEnforcementEnabled;

  GetClusterMasterAuthorizedNetworksConfig({
    required this.cidrBlocks,
    required this.gcpPublicCidrsAccessEnabled,
    required this.privateEndpointEnforcementEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = pulumi.Input.encodeList<
        GetClusterMasterAuthorizedNetworksConfigCidrBlock,
        Map<String, dynamic>>(cidrBlocks, (value) => value.toMap());
    map['gcpPublicCidrsAccessEnabled'] = gcpPublicCidrsAccessEnabled;
    map['privateEndpointEnforcementEnabled'] =
        privateEndpointEnforcementEnabled;
    return map;
  }

  factory GetClusterMasterAuthorizedNetworksConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMasterAuthorizedNetworksConfig(
      cidrBlocks: pulumi.Input.decodeList<
              GetClusterMasterAuthorizedNetworksConfigCidrBlock>(
          map['cidrBlocks'],
          (value) => GetClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(
              (value as Map).cast<String, dynamic>())),
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] as bool,
      privateEndpointEnforcementEnabled:
          map['privateEndpointEnforcementEnabled'] as bool,
    );
  }
}
