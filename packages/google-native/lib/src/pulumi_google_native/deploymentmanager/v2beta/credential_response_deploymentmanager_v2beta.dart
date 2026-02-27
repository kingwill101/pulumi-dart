// ignore_for_file: unused_element, unnecessary_cast

import 'basic_auth_response_deploymentmanager_v2beta.dart';
import 'service_account_response_deploymentmanager_v2beta.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class CredentialResponseDeploymentmanagerV2beta {
  /// Basic Auth Credential, only used by TypeProvider.
  final BasicAuthResponseDeploymentmanagerV2beta basicAuth;

  /// Service Account Credential, only used by Deployment.
  final ServiceAccountResponseDeploymentmanagerV2beta serviceAccount;

  /// Specify to use the project default credential, only supported by Deployment.
  final bool useProjectDefault;

  CredentialResponseDeploymentmanagerV2beta({
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

  factory CredentialResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return CredentialResponseDeploymentmanagerV2beta(
      basicAuth: BasicAuthResponseDeploymentmanagerV2beta.fromMap(
          (map['basicAuth'] as Map).cast<String, dynamic>()),
      serviceAccount: ServiceAccountResponseDeploymentmanagerV2beta.fromMap(
          (map['serviceAccount'] as Map).cast<String, dynamic>()),
      useProjectDefault: map['useProjectDefault'] as bool,
    );
  }
}
