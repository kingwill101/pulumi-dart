// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_gkehub_v1beta.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecGkehubV1beta {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethodGkehubV1beta>? authMethods;

  IdentityServiceMembershipSpecGkehubV1beta({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMethodsValue = authMethods;
    if (authMethodsValue != null) {
      map['authMethods'] = pulumi.Input.encodeList<
          IdentityServiceAuthMethodGkehubV1beta,
          Map<String, dynamic>>(authMethodsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IdentityServiceMembershipSpecGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecGkehubV1beta(
      authMethods: map['authMethods'] == null
          ? null
          : pulumi.Input.decodeList<IdentityServiceAuthMethodGkehubV1beta>(
              map['authMethods'],
              (value) => IdentityServiceAuthMethodGkehubV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
