// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantPrincipalProjectDomainUnitFilter {
  /// Identifier of the domain unit for filtering.
  final pulumi.Input<String> domainUnit;
  /// Whether to include child domain units in the filter.
  final pulumi.Input<bool?>? includeChildDomainUnits;

  /// Creates a new [PolicyGrantPrincipalProjectDomainUnitFilter].
  /// [domainUnit] Identifier of the domain unit for filtering.
  /// [includeChildDomainUnits] Whether to include child domain units in the filter.
  const PolicyGrantPrincipalProjectDomainUnitFilter({
    required this.domainUnit,
    this.includeChildDomainUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUnit': domainUnit,
      'includeChildDomainUnits': ?includeChildDomainUnits,
    };
  }

  factory PolicyGrantPrincipalProjectDomainUnitFilter.fromMap(Map<String, dynamic> map) {
    return PolicyGrantPrincipalProjectDomainUnitFilter(
      domainUnit: pulumi.Input.fromValue(map['domainUnit'] as String),
      includeChildDomainUnits: (() { final guardedValue = map['includeChildDomainUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
