// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_websecurityscanner_v1beta.dart';
import 'google_account_websecurityscanner_v1beta.dart';
import 'iap_credential_websecurityscanner_v1beta.dart';

/// Scan authentication configuration.
class AuthenticationWebsecurityscannerV1beta {
  /// Authentication using a custom account.
  final CustomAccountWebsecurityscannerV1beta? customAccount;

  /// Authentication using a Google account.
  final GoogleAccountWebsecurityscannerV1beta? googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredentialWebsecurityscannerV1beta? iapCredential;

  /// Creates a new [AuthenticationWebsecurityscannerV1beta].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  /// [iapCredential] Authentication using Identity-Aware-Proxy (IAP).
  AuthenticationWebsecurityscannerV1beta({
    this.customAccount,
    this.googleAccount,
    this.iapCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': ?customAccount == null ? null : customAccount!.toMap(),
      'googleAccount': ?googleAccount == null ? null : googleAccount!.toMap(),
      'iapCredential': ?iapCredential == null ? null : iapCredential!.toMap(),
    };
  }

  factory AuthenticationWebsecurityscannerV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthenticationWebsecurityscannerV1beta(
      customAccount: map['customAccount'] == null
          ? null
          : CustomAccountWebsecurityscannerV1beta.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>(),
            ),
      googleAccount: map['googleAccount'] == null
          ? null
          : GoogleAccountWebsecurityscannerV1beta.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>(),
            ),
      iapCredential: map['iapCredential'] == null
          ? null
          : IapCredentialWebsecurityscannerV1beta.fromMap(
              (map['iapCredential'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
