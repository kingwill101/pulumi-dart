// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_delegated_administrators_get_delegated_administrators_args_doc}
/// Arguments for getDelegatedAdministrators.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_delegated_administrators_get_delegated_administrators_args_doc}
class GetDelegatedAdministratorsArgs {
  /// Specifies a service principal name. If specified, then the operation lists the delegated administrators only for the specified service. If you don't specify a service principal, the operation lists all delegated administrators for all services in your organization.
  final pulumi.Input<String>? servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsArgs].
  /// [servicePrincipal] Specifies a service principal name. If specified, then the operation lists the delegated administrators only for the specified service. If you don't specify a service principal, the operation lists all delegated administrators for all services in your organization.
  GetDelegatedAdministratorsArgs({
    String? servicePrincipal,
  }) : servicePrincipal =
            pulumi.Input.asOptionalInput<String>(servicePrincipal);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final servicePrincipalValue = servicePrincipal;
    if (servicePrincipalValue != null) {
      map['servicePrincipal'] = servicePrincipalValue;
    }
    return map;
  }

  factory GetDelegatedAdministratorsArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsArgs(
      servicePrincipal: map['servicePrincipal'] == null
          ? null
          : map['servicePrincipal'] as String,
    );
  }
}
