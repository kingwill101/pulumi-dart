// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'identity_service_auth_method_response.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponse {
  /// A member may support multiple auth methods.
  final List<IdentityServiceAuthMethodResponse> authMethods;

  IdentityServiceMembershipSpecResponse({
    required this.authMethods,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authMethods'] = Input.encodeList<IdentityServiceAuthMethodResponse,
        Map<String, dynamic>>(authMethods, (value) => value.toMap());
    return map;
  }

  factory IdentityServiceMembershipSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecResponse(
      authMethods: Input.decodeList<IdentityServiceAuthMethodResponse>(
          map['authMethods'],
          (value) => IdentityServiceAuthMethodResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
