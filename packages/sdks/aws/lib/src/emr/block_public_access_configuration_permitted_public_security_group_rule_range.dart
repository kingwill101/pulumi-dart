// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange {
  /// The final port in the range of TCP ports.
  final pulumi.Input<int> maxRange;
  /// The first port in the range of TCP ports.
  final pulumi.Input<int> minRange;

  /// Creates a new [BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange].
  /// [maxRange] The final port in the range of TCP ports.
  /// [minRange] The first port in the range of TCP ports.
  const BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange({
    required this.maxRange,
    required this.minRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRange': maxRange,
      'minRange': minRange,
    };
  }

  factory BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange.fromMap(Map<String, dynamic> map) {
    return BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange(
      maxRange: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxRange'])),
      minRange: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minRange'])),
    );
  }
}
