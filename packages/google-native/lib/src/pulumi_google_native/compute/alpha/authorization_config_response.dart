// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_policy_response.dart';

/// [Deprecated] Authorization configuration provides service-level and method-level access control for a service. control for a service.
class AuthorizationConfigResponse {
  /// List of RbacPolicies.
  final List<RbacPolicyResponse> policies;

  AuthorizationConfigResponse({
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policies'] =
        pulumi.Input.encodeList<RbacPolicyResponse, Map<String, dynamic>>(
            policies, (value) => value.toMap());
    return map;
  }

  factory AuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfigResponse(
      policies: pulumi.Input.decodeList<RbacPolicyResponse>(
          map['policies'],
          (value) => RbacPolicyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
