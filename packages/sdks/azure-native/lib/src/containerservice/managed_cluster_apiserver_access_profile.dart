// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access profile for managed cluster API server.
class ManagedClusterAPIServerAccessProfile {
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

  /// Creates a new [ManagedClusterAPIServerAccessProfile].
  /// [authorizedIPRanges] The IP ranges authorized to access the Kubernetes API server. IP ranges are specified in CIDR format, e.g. 137.117.106.88/29. This feature is not compatible with clusters that use Public IP Per Node, or clusters that are using a Basic Load Balancer. For more information see [API server authorized IP ranges](https://docs.microsoft.com/azure/aks/api-server-authorized-ip-ranges).
  /// [disableRunCommand] Whether to disable run command for the cluster or not.
  /// [enablePrivateCluster] Whether to create the cluster as a private cluster or not. For more details, see [Creating a private AKS cluster](https://docs.microsoft.com/azure/aks/private-clusters).
  /// [enablePrivateClusterPublicFQDN] Whether to create additional public FQDN for private cluster or not.
  /// [enableVnetIntegration] Whether to enable apiserver vnet integration for the cluster or not. See aka.ms/AksVnetIntegration for more details.
  /// [privateDNSZone] The private DNS zone mode for the cluster. The default is System. For more details see [configure private DNS zone](https://docs.microsoft.com/azure/aks/private-clusters#configure-private-dns-zone). Allowed values are 'system' and 'none'.
  /// [subnetId] The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new cluster with BYO Vnet, or when updating an existing cluster to enable apiserver vnet integration.
  ManagedClusterAPIServerAccessProfile({
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

  factory ManagedClusterAPIServerAccessProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAPIServerAccessProfile(
      authorizedIPRanges: (() { final guardedValue = map['authorizedIPRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disableRunCommand: (() { final guardedValue = map['disableRunCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateCluster: (() { final guardedValue = map['enablePrivateCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateClusterPublicFQDN: (() { final guardedValue = map['enablePrivateClusterPublicFQDN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableVnetIntegration: (() { final guardedValue = map['enableVnetIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateDNSZone: (() { final guardedValue = map['privateDNSZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

