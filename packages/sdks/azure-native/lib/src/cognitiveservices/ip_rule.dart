// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule governing the accessibility from a specific ip address or ip range.
class IpRule {
  /// An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  final pulumi.Input<String> value;

  /// Creates a new [IpRule].
  /// [value] An IPv4 address range in CIDR notation, such as '124.56.78.91' (simple IP address) or '124.56.78.0/24' (all addresses that start with 124.56.78).
  const IpRule({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory IpRule.fromMap(Map<String, dynamic> map) {
    return IpRule(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

