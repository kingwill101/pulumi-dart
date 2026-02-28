// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock {
  /// cidr_block must be specified in CIDR notation.
  final String cidrBlock;
  /// display_name is a field for users to identify CIDR blocks.
  final String? displayName;

  /// Creates a new [EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is a field for users to identify CIDR blocks.
  EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': ?displayName,
    };
  }

  factory EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}

