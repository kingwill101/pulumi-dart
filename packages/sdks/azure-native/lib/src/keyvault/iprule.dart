// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule governing the accessibility of a vault from a specific ip address or ip range.
class IPRule {
  /// An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  final pulumi.Input<String> value;

  /// Creates a new [IPRule].
  /// [value] An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  const IPRule({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
