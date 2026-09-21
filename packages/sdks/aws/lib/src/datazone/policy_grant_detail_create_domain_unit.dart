// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailCreateDomainUnit {
  /// Whether to include child domain units.
  final pulumi.Input<bool?>? includeChildDomainUnits;

  /// Creates a new [PolicyGrantDetailCreateDomainUnit].
  /// [includeChildDomainUnits] Whether to include child domain units.
  const PolicyGrantDetailCreateDomainUnit({
    this.includeChildDomainUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeChildDomainUnits': ?includeChildDomainUnits,
    };
  }

  factory PolicyGrantDetailCreateDomainUnit.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailCreateDomainUnit(
      includeChildDomainUnits: (() { final guardedValue = map['includeChildDomainUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
