// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_grant_principal_project_domain_unit_filter.dart';

class PolicyGrantPrincipalProject {
  /// Filter for domain unit scoping. See `domainUnitFilter` Block below.
  final pulumi.Input<PolicyGrantPrincipalProjectDomainUnitFilter?>? domainUnitFilter;
  /// Designation of the project principal. Valid values: `CONTRIBUTOR`, `OWNER`, `PROJECT_CATALOG_STEWARD`.
  final pulumi.Input<String> projectDesignation;
  /// Identifier of the project.
  final pulumi.Input<String?>? projectIdentifier;

  /// Creates a new [PolicyGrantPrincipalProject].
  /// [domainUnitFilter] Filter for domain unit scoping. See `domainUnitFilter` Block below.
  /// [projectDesignation] Designation of the project principal. Valid values: `CONTRIBUTOR`, `OWNER`, `PROJECT_CATALOG_STEWARD`.
  /// [projectIdentifier] Identifier of the project.
  const PolicyGrantPrincipalProject({
    this.domainUnitFilter,
    required this.projectDesignation,
    this.projectIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUnitFilter': ?pulumi.Input.mapOptionalInputValue<PolicyGrantPrincipalProjectDomainUnitFilter, Map<String, dynamic>>(domainUnitFilter, (value) => value.toMap()),
      'projectDesignation': projectDesignation,
      'projectIdentifier': ?projectIdentifier,
    };
  }

  factory PolicyGrantPrincipalProject.fromMap(Map<String, dynamic> map) {
    return PolicyGrantPrincipalProject(
      domainUnitFilter: (() { final guardedValue = map['domainUnitFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantPrincipalProjectDomainUnitFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectDesignation: pulumi.Input.fromValue(map['projectDesignation'] as String),
      projectIdentifier: (() { final guardedValue = map['projectIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
