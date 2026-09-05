// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_delegated_administrators_get_delegated_administrators_args_doc}
/// Arguments for getDelegatedAdministrators.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_delegated_administrators_get_delegated_administrators_args_doc}
class GetDelegatedAdministratorsArgs {
  /// Specifies a service principal name. If specified, then the operation lists the delegated administrators only for the specified service. If you don't specify a service principal, the operation lists all delegated administrators for all services in your organization.
  final pulumi.Input<String?>? servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsArgs].
  /// [servicePrincipal] Specifies a service principal name. If specified, then the operation lists the delegated administrators only for the specified service. If you don't specify a service principal, the operation lists all delegated administrators for all services in your organization.
  const GetDelegatedAdministratorsArgs({
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory GetDelegatedAdministratorsArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsArgs(
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
