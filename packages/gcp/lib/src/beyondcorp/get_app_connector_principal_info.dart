// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connector_principal_info_service_account.dart';

class GetAppConnectorPrincipalInfo {
  /// ServiceAccount represents a GCP service account.
  final List<GetAppConnectorPrincipalInfoServiceAccount> serviceAccounts;

  /// Creates a new [GetAppConnectorPrincipalInfo].
  /// [serviceAccounts] ServiceAccount represents a GCP service account.
  GetAppConnectorPrincipalInfo({
    required this.serviceAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccounts'] = pulumi.Input.encodeList<
        GetAppConnectorPrincipalInfoServiceAccount,
        Map<String, dynamic>>(serviceAccounts, (value) => value.toMap());
    return map;
  }

  factory GetAppConnectorPrincipalInfo.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorPrincipalInfo(
      serviceAccounts:
          pulumi.Input.decodeList<GetAppConnectorPrincipalInfoServiceAccount>(
              map['serviceAccounts'],
              (value) => GetAppConnectorPrincipalInfoServiceAccount.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
