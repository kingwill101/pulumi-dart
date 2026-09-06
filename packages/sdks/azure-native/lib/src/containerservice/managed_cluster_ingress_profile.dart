// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_ingress_profile_web_app_routing.dart';

/// Ingress profile for the container service cluster.
class ManagedClusterIngressProfile {
  /// App Routing settings for the ingress profile. You can find an overview and onboarding guide for this feature at https://learn.microsoft.com/en-us/azure/aks/app-routing?tabs=default%2Cdeploy-app-default.
  final pulumi.Input<ManagedClusterIngressProfileWebAppRouting?>? webAppRouting;

  /// Creates a new [ManagedClusterIngressProfile].
  /// [webAppRouting] App Routing settings for the ingress profile. You can find an overview and onboarding guide for this feature at https://learn.microsoft.com/en-us/azure/aks/app-routing?tabs=default%2Cdeploy-app-default.
  const ManagedClusterIngressProfile({
    this.webAppRouting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webAppRouting': ?pulumi.Input.mapOptionalInputValue<ManagedClusterIngressProfileWebAppRouting, Map<String, dynamic>>(webAppRouting, (value) => value.toMap()),
    };
  }

  factory ManagedClusterIngressProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIngressProfile(
      webAppRouting: (() { final guardedValue = map['webAppRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterIngressProfileWebAppRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
