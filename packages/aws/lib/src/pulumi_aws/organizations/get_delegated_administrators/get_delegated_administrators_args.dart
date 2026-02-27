// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDelegatedAdministrators.
class GetDelegatedAdministratorsArgs {
  /// Specifies a service principal name. If specified, then the operation lists the delegated administrators only for the specified service. If you don't specify a service principal, the operation lists all delegated administrators for all services in your organization.
  final pulumi.Input<String>? servicePrincipal;

  GetDelegatedAdministratorsArgs({
    this.servicePrincipal,
  });

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
      servicePrincipal:
          pulumi.Input.asOptionalInput<String>(map['servicePrincipal']),
    );
  }
}
