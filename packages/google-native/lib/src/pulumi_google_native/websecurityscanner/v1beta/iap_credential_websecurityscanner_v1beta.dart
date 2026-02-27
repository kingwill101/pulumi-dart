// ignore_for_file: unused_element, unnecessary_cast

import 'iap_test_service_account_info_websecurityscanner_v1beta.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredentialWebsecurityscannerV1beta {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final IapTestServiceAccountInfoWebsecurityscannerV1beta?
      iapTestServiceAccountInfo;

  IapCredentialWebsecurityscannerV1beta({
    this.iapTestServiceAccountInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iapTestServiceAccountInfoValue = iapTestServiceAccountInfo;
    if (iapTestServiceAccountInfoValue != null) {
      map['iapTestServiceAccountInfo'] = iapTestServiceAccountInfoValue.toMap();
    }
    return map;
  }

  factory IapCredentialWebsecurityscannerV1beta.fromMap(
      Map<String, dynamic> map) {
    return IapCredentialWebsecurityscannerV1beta(
      iapTestServiceAccountInfo: map['iapTestServiceAccountInfo'] == null
          ? null
          : IapTestServiceAccountInfoWebsecurityscannerV1beta.fromMap(
              (map['iapTestServiceAccountInfo'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
