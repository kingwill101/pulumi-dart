// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'identity_service_auth_method_response3.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponse3 {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethodResponse3> authMethods;

  IdentityServiceMembershipSpecResponse3({
    required this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authMethods'] = Input.encodeList<IdentityServiceAuthMethodResponse3,
        Map<String, dynamic>>(authMethods, (value) => value.toMap());
    return map;
  }

  factory IdentityServiceMembershipSpecResponse3.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecResponse3(
      authMethods: Input.decodeList<IdentityServiceAuthMethodResponse3>(
          map['authMethods'],
          (value) => IdentityServiceAuthMethodResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
