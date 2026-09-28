// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantPrincipalDomainUnit {
  /// Filter to grant access to all domain units. Empty block.
  final pulumi.Input<Map<String, dynamic>?>? allDomainUnitsGrantFilter;
  /// Designation of the domain unit principal. Valid values: `OWNER`.
  final pulumi.Input<String> domainUnitDesignation;
  /// Identifier of the domain unit.
  final pulumi.Input<String?>? domainUnitIdentifier;

  /// Creates a new [PolicyGrantPrincipalDomainUnit].
  /// [allDomainUnitsGrantFilter] Filter to grant access to all domain units. Empty block.
  /// [domainUnitDesignation] Designation of the domain unit principal. Valid values: `OWNER`.
  /// [domainUnitIdentifier] Identifier of the domain unit.
  const PolicyGrantPrincipalDomainUnit({
    this.allDomainUnitsGrantFilter,
    required this.domainUnitDesignation,
    this.domainUnitIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allDomainUnitsGrantFilter': ?allDomainUnitsGrantFilter,
      'domainUnitDesignation': domainUnitDesignation,
      'domainUnitIdentifier': ?domainUnitIdentifier,
    };
  }

  factory PolicyGrantPrincipalDomainUnit.fromMap(Map<String, dynamic> map) {
    return PolicyGrantPrincipalDomainUnit(
      allDomainUnitsGrantFilter: (() { final guardedValue = map['allDomainUnitsGrantFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      domainUnitDesignation: pulumi.Input.fromValue(map['domainUnitDesignation'] as String),
      domainUnitIdentifier: (() { final guardedValue = map['domainUnitIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
