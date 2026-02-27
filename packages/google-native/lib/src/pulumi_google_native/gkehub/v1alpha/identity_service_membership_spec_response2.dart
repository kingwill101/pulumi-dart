// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'identity_service_auth_method_response2.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponse2 {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethodResponse2> authMethods;

  IdentityServiceMembershipSpecResponse2({
    required this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authMethods'] = Input.encodeList<IdentityServiceAuthMethodResponse2,
        Map<String, dynamic>>(authMethods, (value) => value.toMap());
    return map;
  }

  factory IdentityServiceMembershipSpecResponse2.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecResponse2(
      authMethods: Input.decodeList<IdentityServiceAuthMethodResponse2>(
          map['authMethods'],
          (value) => IdentityServiceAuthMethodResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
