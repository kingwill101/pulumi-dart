// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_manifest_response_gkehub_v1beta.dart';
import 'resource_options_response_gkehub_v1beta.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResourceResponseGkehubV1beta {
  /// The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponseGkehubV1beta> connectResources;
  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final String membershipCrManifest;
  /// Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponseGkehubV1beta> membershipResources;
  /// Optional. Options for Kubernetes resource generation.
  final ResourceOptionsResponseGkehubV1beta resourceOptions;

  /// Creates a new [KubernetesResourceResponseGkehubV1beta].
  /// [connectResources] The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [membershipCrManifest] Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  /// [membershipResources] Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [resourceOptions] Optional. Options for Kubernetes resource generation.
  KubernetesResourceResponseGkehubV1beta({
    required this.connectResources,
    required this.membershipCrManifest,
    required this.membershipResources,
    required this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectResources': pulumi.Input.encodeList<ResourceManifestResponseGkehubV1beta, Map<String, dynamic>>(connectResources, (value) => value.toMap()),
      'membershipCrManifest': membershipCrManifest,
      'membershipResources': pulumi.Input.encodeList<ResourceManifestResponseGkehubV1beta, Map<String, dynamic>>(membershipResources, (value) => value.toMap()),
      'resourceOptions': resourceOptions.toMap(),
    };
  }

  factory KubernetesResourceResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return KubernetesResourceResponseGkehubV1beta(
      connectResources: pulumi.Input.decodeList<ResourceManifestResponseGkehubV1beta>(map['connectResources'], (value) => ResourceManifestResponseGkehubV1beta.fromMap((value as Map).cast<String, dynamic>())),
      membershipCrManifest: map['membershipCrManifest'] as String,
      membershipResources: pulumi.Input.decodeList<ResourceManifestResponseGkehubV1beta>(map['membershipResources'], (value) => ResourceManifestResponseGkehubV1beta.fromMap((value as Map).cast<String, dynamic>())),
      resourceOptions: ResourceOptionsResponseGkehubV1beta.fromMap((map['resourceOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

