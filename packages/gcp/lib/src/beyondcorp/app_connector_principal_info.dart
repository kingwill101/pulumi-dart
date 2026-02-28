// ignore_for_file: unused_element, unnecessary_cast

import 'app_connector_principal_info_service_account.dart';

class AppConnectorPrincipalInfo {
  /// ServiceAccount represents a GCP service account.
  /// Structure is documented below.
  final AppConnectorPrincipalInfoServiceAccount serviceAccount;

  /// Creates a new [AppConnectorPrincipalInfo].
  /// [serviceAccount] ServiceAccount represents a GCP service account.
  AppConnectorPrincipalInfo({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccount'] = serviceAccount.toMap();
    return map;
  }

  factory AppConnectorPrincipalInfo.fromMap(Map<String, dynamic> map) {
    return AppConnectorPrincipalInfo(
      serviceAccount: AppConnectorPrincipalInfoServiceAccount.fromMap(
          (map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
