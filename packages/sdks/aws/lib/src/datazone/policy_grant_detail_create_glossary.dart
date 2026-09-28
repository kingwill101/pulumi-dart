// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailCreateGlossary {
  /// Whether to include child domain units.
  final pulumi.Input<bool?>? includeChildDomainUnits;

  /// Creates a new [PolicyGrantDetailCreateGlossary].
  /// [includeChildDomainUnits] Whether to include child domain units.
  const PolicyGrantDetailCreateGlossary({
    this.includeChildDomainUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeChildDomainUnits': ?includeChildDomainUnits,
    };
  }

  factory PolicyGrantDetailCreateGlossary.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailCreateGlossary(
      includeChildDomainUnits: (() { final guardedValue = map['includeChildDomainUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
