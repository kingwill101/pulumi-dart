// ignore_for_file: unused_element, unnecessary_cast

class ClusterMasterAuthorizedNetworksConfigCidrBlock {
  /// External network that can access Kubernetes master through HTTPS.
  /// Must be specified in CIDR notation.
  final String cidrBlock;

  /// Field for users to identify CIDR blocks.
  final String? displayName;

  ClusterMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory ClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(
      Map<String, dynamic> map) {
    return ClusterMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: map['cidrBlock'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}
