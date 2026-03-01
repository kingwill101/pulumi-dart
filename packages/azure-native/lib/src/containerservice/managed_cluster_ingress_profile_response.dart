// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_ingress_profile_web_app_routing_response.dart';

/// Ingress profile for the container service cluster.
class ManagedClusterIngressProfileResponse {
  /// App Routing settings for the ingress profile. You can find an overview and onboarding guide for this feature at https://learn.microsoft.com/en-us/azure/aks/app-routing?tabs=default%2Cdeploy-app-default.
  final ManagedClusterIngressProfileWebAppRoutingResponse? webAppRouting;

  /// Creates a new [ManagedClusterIngressProfileResponse].
  /// [webAppRouting] App Routing settings for the ingress profile. You can find an overview and onboarding guide for this feature at https://learn.microsoft.com/en-us/azure/aks/app-routing?tabs=default%2Cdeploy-app-default.
  ManagedClusterIngressProfileResponse({
    this.webAppRouting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webAppRouting': ?webAppRouting == null ? null : webAppRouting!.toMap(),
    };
  }

  factory ManagedClusterIngressProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIngressProfileResponse(
      webAppRouting: map['webAppRouting'] == null ? null : ManagedClusterIngressProfileWebAppRoutingResponse.fromMap((map['webAppRouting'] as Map).cast<String, dynamic>()),
    );
  }
}

