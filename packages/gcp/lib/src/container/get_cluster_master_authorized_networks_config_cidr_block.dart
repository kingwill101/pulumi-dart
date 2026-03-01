// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMasterAuthorizedNetworksConfigCidrBlock {
  /// External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation.
  final String cidrBlock;

  /// Field for users to identify CIDR blocks.
  final String displayName;

  /// Creates a new [GetClusterMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation.
  /// [displayName] Field for users to identify CIDR blocks.
  GetClusterMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory GetClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] as String,
    );
  }
}
