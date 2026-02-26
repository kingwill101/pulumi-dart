// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'identity_service_auth_method2.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpec2 {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethod2>? authMethods;

  IdentityServiceMembershipSpec2({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMethodsValue = authMethods;
    if (authMethodsValue != null) {
      map['authMethods'] =
          Input.encodeList<IdentityServiceAuthMethod2, Map<String, dynamic>>(
              authMethodsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IdentityServiceMembershipSpec2.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpec2(
      authMethods: map['authMethods'] == null
          ? null
          : Input.decodeList<IdentityServiceAuthMethod2>(
              map['authMethods'],
              (value) => IdentityServiceAuthMethod2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
