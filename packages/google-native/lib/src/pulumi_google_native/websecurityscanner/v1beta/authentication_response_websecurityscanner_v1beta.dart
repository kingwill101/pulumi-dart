// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_response_websecurityscanner_v1beta.dart';
import 'google_account_response_websecurityscanner_v1beta.dart';
import 'iap_credential_response_websecurityscanner_v1beta.dart';

/// Scan authentication configuration.
class AuthenticationResponseWebsecurityscannerV1beta {
  /// Authentication using a custom account.
  final CustomAccountResponseWebsecurityscannerV1beta customAccount;

  /// Authentication using a Google account.
  final GoogleAccountResponseWebsecurityscannerV1beta googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredentialResponseWebsecurityscannerV1beta iapCredential;

  AuthenticationResponseWebsecurityscannerV1beta({
    required this.customAccount,
    required this.googleAccount,
    required this.iapCredential,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customAccount'] = customAccount.toMap();
    map['googleAccount'] = googleAccount.toMap();
    map['iapCredential'] = iapCredential.toMap();
    return map;
  }

  factory AuthenticationResponseWebsecurityscannerV1beta.fromMap(
      Map<String, dynamic> map) {
    return AuthenticationResponseWebsecurityscannerV1beta(
      customAccount: CustomAccountResponseWebsecurityscannerV1beta.fromMap(
          (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: GoogleAccountResponseWebsecurityscannerV1beta.fromMap(
          (map['googleAccount'] as Map).cast<String, dynamic>()),
      iapCredential: IapCredentialResponseWebsecurityscannerV1beta.fromMap(
          (map['iapCredential'] as Map).cast<String, dynamic>()),
    );
  }
}
