// ignore_for_file: unused_element, unnecessary_cast

import 'basic_auth.dart';
import 'service_account6.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class Credential {
  /// Basic Auth Credential, only used by TypeProvider.
  final BasicAuth? basicAuth;

  /// Service Account Credential, only used by Deployment.
  final ServiceAccount6? serviceAccount;

  /// Specify to use the project default credential, only supported by Deployment.
  final bool? useProjectDefault;

  Credential({
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

  factory Credential.fromMap(Map<String, dynamic> map) {
    return Credential(
      basicAuth: map['basicAuth'] == null
          ? null
          : BasicAuth.fromMap(
              (map['basicAuth'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : ServiceAccount6.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
      useProjectDefault: map['useProjectDefault'] == null
          ? null
          : map['useProjectDefault'] as bool,
    );
  }
}
