// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_grant_principal_domain_unit.dart';
import 'policy_grant_principal_group.dart';
import 'policy_grant_principal_project.dart';
import 'policy_grant_principal_user.dart';

class PolicyGrantPrincipal {
  /// Domain unit principal. See `domainUnit` Block below.
  final pulumi.Input<PolicyGrantPrincipalDomainUnit?>? domainUnit;
  /// Group principal. See `group` Block below.
  final pulumi.Input<PolicyGrantPrincipalGroup?>? group;
  /// Project principal. See `project` Block below.
  final pulumi.Input<PolicyGrantPrincipalProject?>? project;
  /// User principal. See `user` Block below.
  final pulumi.Input<PolicyGrantPrincipalUser?>? user;

  /// Creates a new [PolicyGrantPrincipal].
  /// [domainUnit] Domain unit principal. See `domainUnit` Block below.
  /// [group] Group principal. See `group` Block below.
  /// [project] Project principal. See `project` Block below.
  /// [user] User principal. See `user` Block below.
  const PolicyGrantPrincipal({
    this.domainUnit,
    this.group,
    this.project,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUnit': ?pulumi.Input.mapOptionalInputValue<PolicyGrantPrincipalDomainUnit, Map<String, dynamic>>(domainUnit, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<PolicyGrantPrincipalGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'project': ?pulumi.Input.mapOptionalInputValue<PolicyGrantPrincipalProject, Map<String, dynamic>>(project, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<PolicyGrantPrincipalUser, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory PolicyGrantPrincipal.fromMap(Map<String, dynamic> map) {
    return PolicyGrantPrincipal(
      domainUnit: (() { final guardedValue = map['domainUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantPrincipalDomainUnit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantPrincipalGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantPrincipalProject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantPrincipalUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
