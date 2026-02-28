// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_manifest_response_gkehub_v1alpha2.dart';
import 'resource_options_response_gkehub_v1alpha2.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResourceResponseGkehubV1alpha2 {
  /// The Kubernetes resources for installing the GKE Connect agent. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponseGkehubV1alpha2> connectResources;

  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during Create or Update, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final String membershipCrManifest;

  /// Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponseGkehubV1alpha2> membershipResources;

  /// Optional. Options for Kubernetes resource generation.
  final ResourceOptionsResponseGkehubV1alpha2 resourceOptions;

  /// Creates a new [KubernetesResourceResponseGkehubV1alpha2].
  /// [connectResources] The Kubernetes resources for installing the GKE Connect agent. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [membershipCrManifest] Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during Create or Update, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  /// [membershipResources] Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [resourceOptions] Optional. Options for Kubernetes resource generation.
  KubernetesResourceResponseGkehubV1alpha2({
    required this.connectResources,
    required this.membershipCrManifest,
    required this.membershipResources,
    required this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectResources'] = pulumi.Input.encodeList<
        ResourceManifestResponseGkehubV1alpha2,
        Map<String, dynamic>>(connectResources, (value) => value.toMap());
    map['membershipCrManifest'] = membershipCrManifest;
    map['membershipResources'] = pulumi.Input.encodeList<
        ResourceManifestResponseGkehubV1alpha2,
        Map<String, dynamic>>(membershipResources, (value) => value.toMap());
    map['resourceOptions'] = resourceOptions.toMap();
    return map;
  }

  factory KubernetesResourceResponseGkehubV1alpha2.fromMap(
      Map<String, dynamic> map) {
    return KubernetesResourceResponseGkehubV1alpha2(
      connectResources:
          pulumi.Input.decodeList<ResourceManifestResponseGkehubV1alpha2>(
              map['connectResources'],
              (value) => ResourceManifestResponseGkehubV1alpha2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      membershipCrManifest: map['membershipCrManifest'] as String,
      membershipResources:
          pulumi.Input.decodeList<ResourceManifestResponseGkehubV1alpha2>(
              map['membershipResources'],
              (value) => ResourceManifestResponseGkehubV1alpha2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceOptions: ResourceOptionsResponseGkehubV1alpha2.fromMap(
          (map['resourceOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
