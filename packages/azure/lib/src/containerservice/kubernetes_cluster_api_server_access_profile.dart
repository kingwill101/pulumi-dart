// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterApiServerAccessProfile {
  /// Set of authorized IP ranges to allow access to API server, e.g. ["198.51.100.0/24"].
  final List<String>? authorizedIpRanges;
  /// The ID of the Subnet where the API server endpoint is delegated to.
  final String? subnetId;
  /// Whether to enable virtual network integration for the API Server. Defaults to `false`.
  final bool? virtualNetworkIntegrationEnabled;

  /// Creates a new [KubernetesClusterApiServerAccessProfile].
  /// [authorizedIpRanges] Set of authorized IP ranges to allow access to API server, e.g. ["198.51.100.0/24"].
  /// [subnetId] The ID of the Subnet where the API server endpoint is delegated to.
  /// [virtualNetworkIntegrationEnabled] Whether to enable virtual network integration for the API Server. Defaults to `false`.
  KubernetesClusterApiServerAccessProfile({
    this.authorizedIpRanges,
    this.subnetId,
    this.virtualNetworkIntegrationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedIpRanges': ?authorizedIpRanges,
      'subnetId': ?subnetId,
      'virtualNetworkIntegrationEnabled': ?virtualNetworkIntegrationEnabled,
    };
  }

  factory KubernetesClusterApiServerAccessProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterApiServerAccessProfile(
      authorizedIpRanges: map['authorizedIpRanges'] == null ? null : (map['authorizedIpRanges'] as List).cast<String>(),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      virtualNetworkIntegrationEnabled: map['virtualNetworkIntegrationEnabled'] == null ? null : map['virtualNetworkIntegrationEnabled'] as bool,
    );
  }
}

