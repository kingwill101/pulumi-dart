// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'rbac_policy.dart';

/// [Deprecated] Authorization configuration provides service-level and method-level access control for a service. control for a service.
class AuthorizationConfig {
  /// List of RbacPolicies.
  final List<RbacPolicy>? policies;

  AuthorizationConfig({
    this.policies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policiesValue = policies;
    if (policiesValue != null) {
      map['policies'] = Input.encodeList<RbacPolicy, Map<String, dynamic>>(
          policiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfig(
      policies: map['policies'] == null
          ? null
          : Input.decodeList<RbacPolicy>(
              map['policies'],
              (value) =>
                  RbacPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
