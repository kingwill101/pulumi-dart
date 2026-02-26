// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_app_connector_principal_info_service_account/get_app_connector_principal_info_service_account.dart';

class GetAppConnectorPrincipalInfo {
  /// ServiceAccount represents a GCP service account.
  final List<GetAppConnectorPrincipalInfoServiceAccount> serviceAccounts;

  GetAppConnectorPrincipalInfo({
    required this.serviceAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccounts'] = Input.encodeList<
        GetAppConnectorPrincipalInfoServiceAccount,
        Map<String, dynamic>>(serviceAccounts, (value) => value.toMap());
    return map;
  }

  factory GetAppConnectorPrincipalInfo.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorPrincipalInfo(
      serviceAccounts:
          Input.decodeList<GetAppConnectorPrincipalInfoServiceAccount>(
              map['serviceAccounts'],
              (value) => GetAppConnectorPrincipalInfoServiceAccount.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
