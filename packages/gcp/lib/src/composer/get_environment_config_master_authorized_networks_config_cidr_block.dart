// ignore_for_file: unused_element, unnecessary_cast


class GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock {
  /// cidr_block must be specified in CIDR notation.
  final String cidrBlock;
  /// display_name is a field for users to identify CIDR blocks.
  final String displayName;

  /// Creates a new [GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is a field for users to identify CIDR blocks.
  GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] as String,
    );
  }
}

