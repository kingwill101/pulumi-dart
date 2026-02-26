// ignore_for_file: unused_element, unnecessary_cast

import 'iap_test_service_account_info2.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredential2 {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final IapTestServiceAccountInfo2? iapTestServiceAccountInfo;

  IapCredential2({
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

  factory IapCredential2.fromMap(Map<String, dynamic> map) {
    return IapCredential2(
      iapTestServiceAccountInfo: map['iapTestServiceAccountInfo'] == null
          ? null
          : IapTestServiceAccountInfo2.fromMap(
              (map['iapTestServiceAccountInfo'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
