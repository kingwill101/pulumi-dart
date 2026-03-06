// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InputSecurityGroupWhitelistRule {
  /// The IPv4 CIDR that's whitelisted.
  final pulumi.Input<String> cidr;

  /// Creates a new [InputSecurityGroupWhitelistRule].
  /// [cidr] The IPv4 CIDR that's whitelisted.
  const InputSecurityGroupWhitelistRule({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InputSecurityGroupWhitelistRule.fromMap(Map<String, dynamic> map) {
    return InputSecurityGroupWhitelistRule(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
    );
  }
}

