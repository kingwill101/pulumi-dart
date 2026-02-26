// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'identity_service_auth_method.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpec {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethod>? authMethods;

  IdentityServiceMembershipSpec({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMethodsValue = authMethods;
    if (authMethodsValue != null) {
      map['authMethods'] =
          Input.encodeList<IdentityServiceAuthMethod, Map<String, dynamic>>(
              authMethodsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IdentityServiceMembershipSpec.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpec(
      authMethods: map['authMethods'] == null
          ? null
          : Input.decodeList<IdentityServiceAuthMethod>(
              map['authMethods'],
              (value) => IdentityServiceAuthMethod.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
