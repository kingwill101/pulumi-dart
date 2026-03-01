// ignore_for_file: unused_element, unnecessary_cast

class BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange {
  /// The final port in the range of TCP ports.
  final int maxRange;

  /// The first port in the range of TCP ports.
  final int minRange;

  /// Creates a new [BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange].
  /// [maxRange] The final port in the range of TCP ports.
  /// [minRange] The first port in the range of TCP ports.
  BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange({
    required this.maxRange,
    required this.minRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxRange': maxRange, 'minRange': minRange};
  }

  factory BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange(
      maxRange: map['maxRange'] as int,
      minRange: map['minRange'] as int,
    );
  }
}
