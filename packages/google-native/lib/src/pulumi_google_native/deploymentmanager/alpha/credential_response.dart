// ignore_for_file: unused_element, unnecessary_cast

import 'basic_auth_response.dart';
import 'service_account_response6.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class CredentialResponse {
  /// Basic Auth Credential, only used by TypeProvider.
  final BasicAuthResponse basicAuth;

  /// Service Account Credential, only used by Deployment.
  final ServiceAccountResponse6 serviceAccount;

  /// Specify to use the project default credential, only supported by Deployment.
  final bool useProjectDefault;

  CredentialResponse({
    required this.basicAuth,
    required this.serviceAccount,
    required this.useProjectDefault,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicAuth'] = basicAuth.toMap();
    map['serviceAccount'] = serviceAccount.toMap();
    map['useProjectDefault'] = useProjectDefault;
    return map;
  }

  factory CredentialResponse.fromMap(Map<String, dynamic> map) {
    return CredentialResponse(
      basicAuth: BasicAuthResponse.fromMap(
          (map['basicAuth'] as Map).cast<String, dynamic>()),
      serviceAccount: ServiceAccountResponse6.fromMap(
          (map['serviceAccount'] as Map).cast<String, dynamic>()),
      useProjectDefault: map['useProjectDefault'] as bool,
    );
  }
}
