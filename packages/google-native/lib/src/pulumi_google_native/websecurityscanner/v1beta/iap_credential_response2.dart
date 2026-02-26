// ignore_for_file: unused_element, unnecessary_cast

import 'iap_test_service_account_info_response2.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredentialResponse2 {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final IapTestServiceAccountInfoResponse2 iapTestServiceAccountInfo;

  IapCredentialResponse2({
    required this.iapTestServiceAccountInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iapTestServiceAccountInfo'] = iapTestServiceAccountInfo.toMap();
    return map;
  }

  factory IapCredentialResponse2.fromMap(Map<String, dynamic> map) {
    return IapCredentialResponse2(
      iapTestServiceAccountInfo: IapTestServiceAccountInfoResponse2.fromMap(
          (map['iapTestServiceAccountInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
