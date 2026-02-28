// ignore_for_file: unused_element, unnecessary_cast

/// CidrBlock contains an optional name and one CIDR block.
class CidrBlockContainerV1beta1 {
  /// cidr_block must be specified in CIDR notation.
  final String? cidrBlock;

  /// display_name is an optional field for users to identify CIDR blocks.
  final String? displayName;

  /// Creates a new [CidrBlockContainerV1beta1].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is an optional field for users to identify CIDR blocks.
  CidrBlockContainerV1beta1({
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

  factory CidrBlockContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return CidrBlockContainerV1beta1(
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}
