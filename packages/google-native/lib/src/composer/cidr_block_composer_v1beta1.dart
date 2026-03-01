// ignore_for_file: unused_element, unnecessary_cast

/// CIDR block with an optional name.
class CidrBlockComposerV1beta1 {
  /// CIDR block that must be specified in CIDR notation.
  final String? cidrBlock;

  /// User-defined name that identifies the CIDR block.
  final String? displayName;

  /// Creates a new [CidrBlockComposerV1beta1].
  /// [cidrBlock] CIDR block that must be specified in CIDR notation.
  /// [displayName] User-defined name that identifies the CIDR block.
  CidrBlockComposerV1beta1({this.cidrBlock, this.displayName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'displayName': ?displayName,
    };
  }

  factory CidrBlockComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return CidrBlockComposerV1beta1(
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
    );
  }
}
