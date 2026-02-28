// ignore_for_file: unused_element, unnecessary_cast

/// KubeletConfig defines the modifiable kubelet configurations for bare metal machines. Note: this list includes fields supported in GKE (see https://cloud.google.com/kubernetes-engine/docs/how-to/node-system-config#kubelet-options).
class BareMetalKubeletConfigResponse {
  /// The maximum size of bursty pulls, temporarily allows pulls to burst to this number, while still not exceeding registry_pull_qps. The value must not be a negative number. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 10.
  final int registryBurst;

  /// The limit of registry pulls per second. Setting this value to 0 means no limit. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 5.
  final int registryPullQps;

  /// Prevents the Kubelet from pulling multiple images at a time. We recommend *not* changing the default value on nodes that run docker daemon with version < 1.9 or an Another Union File System (Aufs) storage backend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has more details.
  final bool serializeImagePullsDisabled;

  /// Creates a new [BareMetalKubeletConfigResponse].
  /// [registryBurst] The maximum size of bursty pulls, temporarily allows pulls to burst to this number, while still not exceeding registry_pull_qps. The value must not be a negative number. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 10.
  /// [registryPullQps] The limit of registry pulls per second. Setting this value to 0 means no limit. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 5.
  /// [serializeImagePullsDisabled] Prevents the Kubelet from pulling multiple images at a time. We recommend *not* changing the default value on nodes that run docker daemon with version < 1.9 or an Another Union File System (Aufs) storage backend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has more details.
  BareMetalKubeletConfigResponse({
    required this.registryBurst,
    required this.registryPullQps,
    required this.serializeImagePullsDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['registryBurst'] = registryBurst;
    map['registryPullQps'] = registryPullQps;
    map['serializeImagePullsDisabled'] = serializeImagePullsDisabled;
    return map;
  }

  factory BareMetalKubeletConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalKubeletConfigResponse(
      registryBurst: map['registryBurst'] as int,
      registryPullQps: map['registryPullQps'] as int,
      serializeImagePullsDisabled: map['serializeImagePullsDisabled'] as bool,
    );
  }
}
