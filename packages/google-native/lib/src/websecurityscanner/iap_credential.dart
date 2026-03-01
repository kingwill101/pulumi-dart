// ignore_for_file: unused_element, unnecessary_cast

import 'iap_test_service_account_info.dart';

/// Describes authentication configuration for Identity-Aware-Proxy (IAP).
class IapCredential {
  /// Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  final IapTestServiceAccountInfo? iapTestServiceAccountInfo;

  /// Creates a new [IapCredential].
  /// [iapTestServiceAccountInfo] Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
  IapCredential({this.iapTestServiceAccountInfo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iapTestServiceAccountInfo': ?iapTestServiceAccountInfo == null
          ? null
          : iapTestServiceAccountInfo!.toMap(),
    };
  }

  factory IapCredential.fromMap(Map<String, dynamic> map) {
    return IapCredential(
      iapTestServiceAccountInfo: map['iapTestServiceAccountInfo'] == null
          ? null
          : IapTestServiceAccountInfo.fromMap(
              (map['iapTestServiceAccountInfo'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
