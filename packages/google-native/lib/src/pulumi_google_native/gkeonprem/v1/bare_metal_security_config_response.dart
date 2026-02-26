// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_response.dart';

/// Specifies the security related settings for the bare metal user cluster.
class BareMetalSecurityConfigResponse {
  /// Configures user access to the user cluster.
  final AuthorizationResponse authorization;

  BareMetalSecurityConfigResponse({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorization'] = authorization.toMap();
    return map;
  }

  factory BareMetalSecurityConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalSecurityConfigResponse(
      authorization: AuthorizationResponse.fromMap(
          (map['authorization'] as Map).cast<String, dynamic>()),
    );
  }
}
