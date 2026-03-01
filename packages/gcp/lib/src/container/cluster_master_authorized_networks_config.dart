// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_authorized_networks_config_cidr_block.dart';

class ClusterMasterAuthorizedNetworksConfig {
  /// External networks that can access the
  /// Kubernetes cluster master through HTTPS.
  final List<ClusterMasterAuthorizedNetworksConfigCidrBlock>? cidrBlocks;

  /// Whether Kubernetes master is
  /// accessible via Google Compute Engine Public IPs.
  final bool? gcpPublicCidrsAccessEnabled;

  /// Whether authorized networks is enforced on the private endpoint or not.
  final bool? privateEndpointEnforcementEnabled;

  /// Creates a new [ClusterMasterAuthorizedNetworksConfig].
  /// [cidrBlocks] External networks that can access the
  /// [gcpPublicCidrsAccessEnabled] Whether Kubernetes master is
  /// [privateEndpointEnforcementEnabled] Whether authorized networks is enforced on the private endpoint or not.
  ClusterMasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.gcpPublicCidrsAccessEnabled,
    this.privateEndpointEnforcementEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks == null
          ? null
          : pulumi.Input.encodeList<
              ClusterMasterAuthorizedNetworksConfigCidrBlock,
              Map<String, dynamic>
            >(cidrBlocks!, (value) => value.toMap()),
      'gcpPublicCidrsAccessEnabled': ?gcpPublicCidrsAccessEnabled,
      'privateEndpointEnforcementEnabled': ?privateEndpointEnforcementEnabled,
    };
  }

  factory ClusterMasterAuthorizedNetworksConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMasterAuthorizedNetworksConfig(
      cidrBlocks: map['cidrBlocks'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterMasterAuthorizedNetworksConfigCidrBlock
            >(
              map['cidrBlocks'],
              (value) => ClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      gcpPublicCidrsAccessEnabled: map['gcpPublicCidrsAccessEnabled'] == null
          ? null
          : map['gcpPublicCidrsAccessEnabled'] as bool,
      privateEndpointEnforcementEnabled:
          map['privateEndpointEnforcementEnabled'] == null
          ? null
          : map['privateEndpointEnforcementEnabled'] as bool,
    );
  }
}
