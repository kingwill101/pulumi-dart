// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access profile for managed cluster API server.
class ManagedClusterAPIServerAccessProfileResponse {
  /// The IP ranges authorized to access the Kubernetes API server. IP ranges are specified in CIDR format, e.g. 137.117.106.88/29. This feature is not compatible with clusters that use Public IP Per Node, or clusters that are using a Basic Load Balancer. For more information see [API server authorized IP ranges](https://docs.microsoft.com/azure/aks/api-server-authorized-ip-ranges).
  final pulumi.Input<List<String>>? authorizedIPRanges;
  /// Whether to disable run command for the cluster or not.
  final pulumi.Input<bool>? disableRunCommand;
  /// Whether to create the cluster as a private cluster or not. For more details, see [Creating a private AKS cluster](https://docs.microsoft.com/azure/aks/private-clusters).
  final pulumi.Input<bool>? enablePrivateCluster;
  /// Whether to create additional public FQDN for private cluster or not.
  final pulumi.Input<bool>? enablePrivateClusterPublicFQDN;
  /// Whether to enable apiserver vnet integration for the cluster or not. See aka.ms/AksVnetIntegration for more details.
  final pulumi.Input<bool>? enableVnetIntegration;
  /// The private DNS zone mode for the cluster. The default is System. For more details see [configure private DNS zone](https://docs.microsoft.com/azure/aks/private-clusters#configure-private-dns-zone). Allowed values are 'system' and 'none'.
  final pulumi.Input<String>? privateDNSZone;
  /// The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new cluster with BYO Vnet, or when updating an existing cluster to enable apiserver vnet integration.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ManagedClusterAPIServerAccessProfileResponse].
  /// [authorizedIPRanges] The IP ranges authorized to access the Kubernetes API server. IP ranges are specified in CIDR format, e.g. 137.117.106.88/29. This feature is not compatible with clusters that use Public IP Per Node, or clusters that are using a Basic Load Balancer. For more information see [API server authorized IP ranges](https://docs.microsoft.com/azure/aks/api-server-authorized-ip-ranges).
  /// [disableRunCommand] Whether to disable run command for the cluster or not.
  /// [enablePrivateCluster] Whether to create the cluster as a private cluster or not. For more details, see [Creating a private AKS cluster](https://docs.microsoft.com/azure/aks/private-clusters).
  /// [enablePrivateClusterPublicFQDN] Whether to create additional public FQDN for private cluster or not.
  /// [enableVnetIntegration] Whether to enable apiserver vnet integration for the cluster or not. See aka.ms/AksVnetIntegration for more details.
  /// [privateDNSZone] The private DNS zone mode for the cluster. The default is System. For more details see [configure private DNS zone](https://docs.microsoft.com/azure/aks/private-clusters#configure-private-dns-zone). Allowed values are 'system' and 'none'.
  /// [subnetId] The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new cluster with BYO Vnet, or when updating an existing cluster to enable apiserver vnet integration.
  ManagedClusterAPIServerAccessProfileResponse({
    this.authorizedIPRanges,
    this.disableRunCommand,
    this.enablePrivateCluster,
    this.enablePrivateClusterPublicFQDN,
    this.enableVnetIntegration,
    this.privateDNSZone,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedIPRanges': ?authorizedIPRanges,
      'disableRunCommand': ?disableRunCommand,
      'enablePrivateCluster': ?enablePrivateCluster,
      'enablePrivateClusterPublicFQDN': ?enablePrivateClusterPublicFQDN,
      'enableVnetIntegration': ?enableVnetIntegration,
      'privateDNSZone': ?privateDNSZone,
      'subnetId': ?subnetId,
    };
  }

  factory ManagedClusterAPIServerAccessProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAPIServerAccessProfileResponse(
      authorizedIPRanges: map['authorizedIPRanges'] == null ? null : ((map['authorizedIPRanges']! as List).cast<String>()).input(),
      disableRunCommand: map['disableRunCommand'] == null ? null : (map['disableRunCommand']! as bool).input(),
      enablePrivateCluster: map['enablePrivateCluster'] == null ? null : (map['enablePrivateCluster']! as bool).input(),
      enablePrivateClusterPublicFQDN: map['enablePrivateClusterPublicFQDN'] == null ? null : (map['enablePrivateClusterPublicFQDN']! as bool).input(),
      enableVnetIntegration: map['enableVnetIntegration'] == null ? null : (map['enableVnetIntegration']! as bool).input(),
      privateDNSZone: map['privateDNSZone'] == null ? null : (map['privateDNSZone']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

