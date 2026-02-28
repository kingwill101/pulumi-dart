// ignore_for_file: unused_element, unnecessary_cast


/// CidrBlock contains an optional name and one CIDR block.
class CidrBlockResponseContainerV1beta1 {
  /// cidr_block must be specified in CIDR notation.
  final String cidrBlock;
  /// display_name is an optional field for users to identify CIDR blocks.
  final String displayName;

  /// Creates a new [CidrBlockResponseContainerV1beta1].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is an optional field for users to identify CIDR blocks.
  CidrBlockResponseContainerV1beta1({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory CidrBlockResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return CidrBlockResponseContainerV1beta1(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] as String,
    );
  }
}

