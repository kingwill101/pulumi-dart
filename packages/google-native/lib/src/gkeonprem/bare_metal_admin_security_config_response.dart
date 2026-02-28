// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_response.dart';

/// Specifies the security related settings for the bare metal admin cluster.
class BareMetalAdminSecurityConfigResponse {
  /// Configures user access to the admin cluster.
  final AuthorizationResponse authorization;

  /// Creates a new [BareMetalAdminSecurityConfigResponse].
  /// [authorization] Configures user access to the admin cluster.
  BareMetalAdminSecurityConfigResponse({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorization'] = authorization.toMap();
    return map;
  }

  factory BareMetalAdminSecurityConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminSecurityConfigResponse(
      authorization: AuthorizationResponse.fromMap(
          (map['authorization'] as Map).cast<String, dynamic>()),
    );
  }
}
