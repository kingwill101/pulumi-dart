// ignore_for_file: unused_element, unnecessary_cast

/// CIDR block with an optional name.
class CidrBlockResponse2 {
  /// CIDR block that must be specified in CIDR notation.
  final String cidrBlock;

  /// User-defined name that identifies the CIDR block.
  final String displayName;

  CidrBlockResponse2({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    map['displayName'] = displayName;
    return map;
  }

  factory CidrBlockResponse2.fromMap(Map<String, dynamic> map) {
    return CidrBlockResponse2(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] as String,
    );
  }
}
