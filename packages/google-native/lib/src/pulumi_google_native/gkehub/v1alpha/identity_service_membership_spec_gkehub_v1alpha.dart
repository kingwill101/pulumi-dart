// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_gkehub_v1alpha.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecGkehubV1alpha {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethodGkehubV1alpha>? authMethods;

  IdentityServiceMembershipSpecGkehubV1alpha({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMethodsValue = authMethods;
    if (authMethodsValue != null) {
      map['authMethods'] = pulumi.Input.encodeList<
          IdentityServiceAuthMethodGkehubV1alpha,
          Map<String, dynamic>>(authMethodsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IdentityServiceMembershipSpecGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecGkehubV1alpha(
      authMethods: map['authMethods'] == null
          ? null
          : pulumi.Input.decodeList<IdentityServiceAuthMethodGkehubV1alpha>(
              map['authMethods'],
              (value) => IdentityServiceAuthMethodGkehubV1alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
