// ignore_for_file: unused_element, unnecessary_cast

import 'basic_auth_deploymentmanager_v2beta.dart';
import 'service_account_deploymentmanager_v2beta.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class CredentialDeploymentmanagerV2beta {
  /// Basic Auth Credential, only used by TypeProvider.
  final BasicAuthDeploymentmanagerV2beta? basicAuth;

  /// Service Account Credential, only used by Deployment.
  final ServiceAccountDeploymentmanagerV2beta? serviceAccount;

  /// Specify to use the project default credential, only supported by Deployment.
  final bool? useProjectDefault;

  CredentialDeploymentmanagerV2beta({
    this.basicAuth,
    this.serviceAccount,
    this.useProjectDefault,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicAuthValue = basicAuth;
    if (basicAuthValue != null) {
      map['basicAuth'] = basicAuthValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue.toMap();
    }
    final useProjectDefaultValue = useProjectDefault;
    if (useProjectDefaultValue != null) {
      map['useProjectDefault'] = useProjectDefaultValue;
    }
    return map;
  }

  factory CredentialDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return CredentialDeploymentmanagerV2beta(
      basicAuth: map['basicAuth'] == null
          ? null
          : BasicAuthDeploymentmanagerV2beta.fromMap(
              (map['basicAuth'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : ServiceAccountDeploymentmanagerV2beta.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
      useProjectDefault: map['useProjectDefault'] == null
          ? null
          : map['useProjectDefault'] as bool,
    );
  }
}
