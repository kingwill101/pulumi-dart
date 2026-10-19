// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailOverrideDomainUnitOwners {
  /// Whether to include child domain units.
  final pulumi.Input<bool?>? includeChildDomainUnits;

  /// Creates a new [PolicyGrantDetailOverrideDomainUnitOwners].
  /// [includeChildDomainUnits] Whether to include child domain units.
  const PolicyGrantDetailOverrideDomainUnitOwners({
    this.includeChildDomainUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeChildDomainUnits': ?includeChildDomainUnits,
    };
  }

  factory PolicyGrantDetailOverrideDomainUnitOwners.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailOverrideDomainUnitOwners(
      includeChildDomainUnits: (() { final guardedValue = map['includeChildDomainUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
