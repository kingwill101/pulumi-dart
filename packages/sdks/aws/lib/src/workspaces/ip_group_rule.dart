// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpGroupRule {
  /// The description of the IP group.
  final pulumi.Input<String>? description;
  /// The IP address range, in CIDR notation, e.g., `10.0.0.0/16`
  final pulumi.Input<String> source;

  /// Creates a new [IpGroupRule].
  /// [description] The description of the IP group.
  /// [source] The IP address range, in CIDR notation, e.g., `10.0.0.0/16`
  const IpGroupRule({
    this.description,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'source': source,
    };
  }

  factory IpGroupRule.fromMap(Map<String, dynamic> map) {
    return IpGroupRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
