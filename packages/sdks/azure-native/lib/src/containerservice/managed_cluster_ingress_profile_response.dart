// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_ingress_profile_web_app_routing_response.dart';

/// Ingress profile for the container service cluster.
class ManagedClusterIngressProfileResponse {
  /// App Routing settings for the ingress profile. You can find an overview and onboarding guide for this feature at https://learn.microsoft.com/en-us/azure/aks/app-routing?tabs=default%2Cdeploy-app-default.
  final pulumi.Input<ManagedClusterIngressProfileWebAppRoutingResponse>? webAppRouting;

  /// Creates a new [ManagedClusterIngressProfileResponse].
  /// [webAppRouting] App Routing settings for the ingress profile. You can find an overview and onboarding guide for this feature at https://learn.microsoft.com/en-us/azure/aks/app-routing?tabs=default%2Cdeploy-app-default.
  const ManagedClusterIngressProfileResponse({
    this.webAppRouting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webAppRouting': ?pulumi.Input.mapOptionalInputValue<ManagedClusterIngressProfileWebAppRoutingResponse, Map<String, dynamic>>(webAppRouting, (value) => value.toMap()),
    };
  }

  factory ManagedClusterIngressProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIngressProfileResponse(
      webAppRouting: (() { final guardedValue = map['webAppRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterIngressProfileWebAppRoutingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

