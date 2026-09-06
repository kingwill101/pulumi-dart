// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_ingress_profile_nginx_response.dart';
import 'user_assigned_identity_managed_cluster_response.dart';

/// Application Routing add-on settings for the ingress profile.
class ManagedClusterIngressProfileWebAppRoutingResponse {
  /// Resource IDs of the DNS zones to be associated with the Application Routing add-on. Used only when Application Routing add-on is enabled. Public and private DNS zones can be in different resource groups, but all public DNS zones must be in the same resource group and all private DNS zones must be in the same resource group.
  final pulumi.Input<List<String>?>? dnsZoneResourceIds;
  /// Whether to enable the Application Routing add-on.
  final pulumi.Input<bool?>? enabled;
  /// Managed identity of the Application Routing add-on. This is the identity that should be granted permissions, for example, to manage the associated Azure DNS resource and get certificates from Azure Key Vault. See [this overview of the add-on](https://learn.microsoft.com/en-us/azure/aks/web-app-routing?tabs=with-osm) for more instructions.
  final pulumi.Input<UserAssignedIdentityManagedClusterResponse> identity;
  /// Configuration for the default NginxIngressController. See more at https://learn.microsoft.com/en-us/azure/aks/app-routing-nginx-configuration#the-default-nginx-ingress-controller.
  final pulumi.Input<ManagedClusterIngressProfileNginxResponse?>? nginx;

  /// Creates a new [ManagedClusterIngressProfileWebAppRoutingResponse].
  /// [dnsZoneResourceIds] Resource IDs of the DNS zones to be associated with the Application Routing add-on. Used only when Application Routing add-on is enabled. Public and private DNS zones can be in different resource groups, but all public DNS zones must be in the same resource group and all private DNS zones must be in the same resource group.
  /// [enabled] Whether to enable the Application Routing add-on.
  /// [identity] Managed identity of the Application Routing add-on. This is the identity that should be granted permissions, for example, to manage the associated Azure DNS resource and get certificates from Azure Key Vault. See [this overview of the add-on](https://learn.microsoft.com/en-us/azure/aks/web-app-routing?tabs=with-osm) for more instructions.
  /// [nginx] Configuration for the default NginxIngressController. See more at https://learn.microsoft.com/en-us/azure/aks/app-routing-nginx-configuration#the-default-nginx-ingress-controller.
  const ManagedClusterIngressProfileWebAppRoutingResponse({
    this.dnsZoneResourceIds,
    this.enabled,
    required this.identity,
    this.nginx,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsZoneResourceIds': ?dnsZoneResourceIds,
      'enabled': ?enabled,
      'identity': pulumi.Input.mapInputValue<UserAssignedIdentityManagedClusterResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'nginx': ?pulumi.Input.mapOptionalInputValue<ManagedClusterIngressProfileNginxResponse, Map<String, dynamic>>(nginx, (value) => value.toMap()),
    };
  }

  factory ManagedClusterIngressProfileWebAppRoutingResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIngressProfileWebAppRoutingResponse(
      dnsZoneResourceIds: (() { final guardedValue = map['dnsZoneResourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: pulumi.Input.fromValue(UserAssignedIdentityManagedClusterResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      nginx: (() { final guardedValue = map['nginx']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterIngressProfileNginxResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
