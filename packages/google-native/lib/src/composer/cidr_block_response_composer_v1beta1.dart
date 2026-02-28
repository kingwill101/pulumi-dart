// ignore_for_file: unused_element, unnecessary_cast


/// CIDR block with an optional name.
class CidrBlockResponseComposerV1beta1 {
  /// CIDR block that must be specified in CIDR notation.
  final String cidrBlock;
  /// User-defined name that identifies the CIDR block.
  final String displayName;

  /// Creates a new [CidrBlockResponseComposerV1beta1].
  /// [cidrBlock] CIDR block that must be specified in CIDR notation.
  /// [displayName] User-defined name that identifies the CIDR block.
  CidrBlockResponseComposerV1beta1({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory CidrBlockResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return CidrBlockResponseComposerV1beta1(
      cidrBlock: map['cidrBlock'] as String,
      displayName: map['displayName'] as String,
    );
  }
}

