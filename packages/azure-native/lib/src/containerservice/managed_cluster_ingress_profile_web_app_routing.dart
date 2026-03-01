// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_ingress_profile_nginx.dart';

/// Application Routing add-on settings for the ingress profile.
class ManagedClusterIngressProfileWebAppRouting {
  /// Resource IDs of the DNS zones to be associated with the Application Routing add-on. Used only when Application Routing add-on is enabled. Public and private DNS zones can be in different resource groups, but all public DNS zones must be in the same resource group and all private DNS zones must be in the same resource group.
  final List<String>? dnsZoneResourceIds;
  /// Whether to enable the Application Routing add-on.
  final bool? enabled;
  /// Configuration for the default NginxIngressController. See more at https://learn.microsoft.com/en-us/azure/aks/app-routing-nginx-configuration#the-default-nginx-ingress-controller.
  final ManagedClusterIngressProfileNginx? nginx;

  /// Creates a new [ManagedClusterIngressProfileWebAppRouting].
  /// [dnsZoneResourceIds] Resource IDs of the DNS zones to be associated with the Application Routing add-on. Used only when Application Routing add-on is enabled. Public and private DNS zones can be in different resource groups, but all public DNS zones must be in the same resource group and all private DNS zones must be in the same resource group.
  /// [enabled] Whether to enable the Application Routing add-on.
  /// [nginx] Configuration for the default NginxIngressController. See more at https://learn.microsoft.com/en-us/azure/aks/app-routing-nginx-configuration#the-default-nginx-ingress-controller.
  ManagedClusterIngressProfileWebAppRouting({
    this.dnsZoneResourceIds,
    this.enabled,
    this.nginx,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsZoneResourceIds': ?dnsZoneResourceIds,
      'enabled': ?enabled,
      'nginx': ?nginx == null ? null : nginx!.toMap(),
    };
  }

  factory ManagedClusterIngressProfileWebAppRouting.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIngressProfileWebAppRouting(
      dnsZoneResourceIds: map['dnsZoneResourceIds'] == null ? null : (map['dnsZoneResourceIds'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      nginx: map['nginx'] == null ? null : ManagedClusterIngressProfileNginx.fromMap((map['nginx'] as Map).cast<String, dynamic>()),
    );
  }
}

