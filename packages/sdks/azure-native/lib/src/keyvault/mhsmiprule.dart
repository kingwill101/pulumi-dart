// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule governing the accessibility of a managed HSM pool from a specific IP address or IP range.
class MHSMIPRule {
  /// An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  final pulumi.Input<String> value;

  /// Creates a new [MHSMIPRule].
  /// [value] An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  MHSMIPRule({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory MHSMIPRule.fromMap(Map<String, dynamic> map) {
    return MHSMIPRule(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

