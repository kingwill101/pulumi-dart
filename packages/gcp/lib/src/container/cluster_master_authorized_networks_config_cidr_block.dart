// ignore_for_file: unused_element, unnecessary_cast

class ClusterMasterAuthorizedNetworksConfigCidrBlock {
  /// External network that can access Kubernetes master through HTTPS.
  /// Must be specified in CIDR notation.
  final String cidrBlock;

  /// Field for users to identify CIDR blocks.
  final String? displayName;

  /// Creates a new [ClusterMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] External network that can access Kubernetes master through HTTPS.
  /// [displayName] Field for users to identify CIDR blocks.
  ClusterMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': ?displayName,
    };
  }

  factory ClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
    );
  }
}
