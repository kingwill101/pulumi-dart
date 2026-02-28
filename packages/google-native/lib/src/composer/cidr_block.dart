// ignore_for_file: unused_element, unnecessary_cast

/// CIDR block with an optional name.
class CidrBlock {
  /// CIDR block that must be specified in CIDR notation.
  final String? cidrBlock;

  /// User-defined name that identifies the CIDR block.
  final String? displayName;

  /// Creates a new [CidrBlock].
  /// [cidrBlock] CIDR block that must be specified in CIDR notation.
  /// [displayName] User-defined name that identifies the CIDR block.
  CidrBlock({
    this.cidrBlock,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory CidrBlock.fromMap(Map<String, dynamic> map) {
    return CidrBlock(
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}
