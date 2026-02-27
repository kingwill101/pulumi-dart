// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_response_gkehub_v1alpha.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponseGkehubV1alpha {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethodResponseGkehubV1alpha> authMethods;

  IdentityServiceMembershipSpecResponseGkehubV1alpha({
    required this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authMethods'] = pulumi.Input.encodeList<
        IdentityServiceAuthMethodResponseGkehubV1alpha,
        Map<String, dynamic>>(authMethods, (value) => value.toMap());
    return map;
  }

  factory IdentityServiceMembershipSpecResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecResponseGkehubV1alpha(
      authMethods: pulumi.Input.decodeList<
              IdentityServiceAuthMethodResponseGkehubV1alpha>(
          map['authMethods'],
          (value) => IdentityServiceAuthMethodResponseGkehubV1alpha.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
