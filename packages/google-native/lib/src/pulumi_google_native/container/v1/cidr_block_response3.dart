// ignore_for_file: unused_element, unnecessary_cast

/// CidrBlock contains an optional name and one CIDR block.
class CidrBlockResponse3 {
  /// cidr_block must be specified in CIDR notation.
  final String cidrBlock;

  /// display_name is an optional field for users to identify CIDR blocks.
  final String displayName;

  CidrBlockResponse3({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    map['displayName'] = displayName;
    return map;
  }

  factory CidrBlockResponse3.fromMap(Map<String, dynamic> map) {
    return CidrBlockResponse3(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] as String,
    );
  }
}
