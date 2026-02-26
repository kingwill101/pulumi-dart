// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'identity_service_auth_method3.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpec3 {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethod3>? authMethods;

  IdentityServiceMembershipSpec3({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMethodsValue = authMethods;
    if (authMethodsValue != null) {
      map['authMethods'] =
          Input.encodeList<IdentityServiceAuthMethod3, Map<String, dynamic>>(
              authMethodsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IdentityServiceMembershipSpec3.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpec3(
      authMethods: map['authMethods'] == null
          ? null
          : Input.decodeList<IdentityServiceAuthMethod3>(
              map['authMethods'],
              (value) => IdentityServiceAuthMethod3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
