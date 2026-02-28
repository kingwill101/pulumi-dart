// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_manifest_response.dart';
import 'resource_options_response.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResourceResponse {
  /// The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponse> connectResources;
  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final String membershipCrManifest;
  /// Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final List<ResourceManifestResponse> membershipResources;
  /// Optional. Options for Kubernetes resource generation.
  final ResourceOptionsResponse resourceOptions;

  /// Creates a new [KubernetesResourceResponse].
  /// [connectResources] The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [membershipCrManifest] Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  /// [membershipResources] Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [resourceOptions] Optional. Options for Kubernetes resource generation.
  KubernetesResourceResponse({
    required this.connectResources,
    required this.membershipCrManifest,
    required this.membershipResources,
    required this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectResources': pulumi.Input.encodeList<ResourceManifestResponse, Map<String, dynamic>>(connectResources, (value) => value.toMap()),
      'membershipCrManifest': membershipCrManifest,
      'membershipResources': pulumi.Input.encodeList<ResourceManifestResponse, Map<String, dynamic>>(membershipResources, (value) => value.toMap()),
      'resourceOptions': resourceOptions.toMap(),
    };
  }

  factory KubernetesResourceResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesResourceResponse(
      connectResources: pulumi.Input.decodeList<ResourceManifestResponse>(map['connectResources'], (value) => ResourceManifestResponse.fromMap((value as Map).cast<String, dynamic>())),
      membershipCrManifest: map['membershipCrManifest'] as String,
      membershipResources: pulumi.Input.decodeList<ResourceManifestResponse>(map['membershipResources'], (value) => ResourceManifestResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceOptions: ResourceOptionsResponse.fromMap((map['resourceOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

