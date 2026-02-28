// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_response_gkehub_v1beta.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponseGkehubV1beta {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethodResponseGkehubV1beta> authMethods;

  /// Creates a new [IdentityServiceMembershipSpecResponseGkehubV1beta].
  /// [authMethods] A member may support multiple auth methods.
  IdentityServiceMembershipSpecResponseGkehubV1beta({
    required this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authMethods'] = pulumi.Input.encodeList<
        IdentityServiceAuthMethodResponseGkehubV1beta,
        Map<String, dynamic>>(authMethods, (value) => value.toMap());
    return map;
  }

  factory IdentityServiceMembershipSpecResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecResponseGkehubV1beta(
      authMethods: pulumi.Input.decodeList<
              IdentityServiceAuthMethodResponseGkehubV1beta>(
          map['authMethods'],
          (value) => IdentityServiceAuthMethodResponseGkehubV1beta.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
