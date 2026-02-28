// ignore_for_file: unused_element, unnecessary_cast

import 'iap_test_service_account_info_response_websecurityscanner_v1beta.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredentialResponseWebsecurityscannerV1beta {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final IapTestServiceAccountInfoResponseWebsecurityscannerV1beta iapTestServiceAccountInfo;

  /// Creates a new [IapCredentialResponseWebsecurityscannerV1beta].
  /// [iapTestServiceAccountInfo] Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  IapCredentialResponseWebsecurityscannerV1beta({
    required this.iapTestServiceAccountInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iapTestServiceAccountInfo': iapTestServiceAccountInfo.toMap(),
    };
  }

  factory IapCredentialResponseWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return IapCredentialResponseWebsecurityscannerV1beta(
      iapTestServiceAccountInfo: IapTestServiceAccountInfoResponseWebsecurityscannerV1beta.fromMap((map['iapTestServiceAccountInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

