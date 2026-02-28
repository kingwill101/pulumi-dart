// ignore_for_file: unused_element, unnecessary_cast

/// CidrBlock contains an optional name and one CIDR block.
class CidrBlockResponse {
  /// cidr_block must be specified in CIDR notation.
  final String cidrBlock;

  /// display_name is an optional field for users to identify CIDR blocks.
  final String displayName;

  /// Creates a new [CidrBlockResponse].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is an optional field for users to identify CIDR blocks.
  CidrBlockResponse({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    map['displayName'] = displayName;
    return map;
  }

  factory CidrBlockResponse.fromMap(Map<String, dynamic> map) {
    return CidrBlockResponse(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] as String,
    );
  }
}
