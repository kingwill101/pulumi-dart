// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_manifest_response4.dart';
import 'resource_options_response4.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResourceResponse4 {
  /// The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponse4> connectResources;

  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final String membershipCrManifest;

  /// Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponse4> membershipResources;

  /// Optional. Options for Kubernetes resource generation.
  final ResourceOptionsResponse4 resourceOptions;

  KubernetesResourceResponse4({
    required this.connectResources,
    required this.membershipCrManifest,
    required this.membershipResources,
    required this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectResources'] =
        Input.encodeList<ResourceManifestResponse4, Map<String, dynamic>>(
            connectResources, (value) => value.toMap());
    map['membershipCrManifest'] = membershipCrManifest;
    map['membershipResources'] =
        Input.encodeList<ResourceManifestResponse4, Map<String, dynamic>>(
            membershipResources, (value) => value.toMap());
    map['resourceOptions'] = resourceOptions.toMap();
    return map;
  }

  factory KubernetesResourceResponse4.fromMap(Map<String, dynamic> map) {
    return KubernetesResourceResponse4(
      connectResources: Input.decodeList<ResourceManifestResponse4>(
          map['connectResources'],
          (value) => ResourceManifestResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      membershipCrManifest: map['membershipCrManifest'] as String,
      membershipResources: Input.decodeList<ResourceManifestResponse4>(
          map['membershipResources'],
          (value) => ResourceManifestResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourceOptions: ResourceOptionsResponse4.fromMap(
          (map['resourceOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
