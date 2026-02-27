// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_response.dart';
import 'google_account_response.dart';
import 'iap_credential_response.dart';

/// Scan authentication configuration.
class AuthenticationResponseWebsecurityscannerV1 {
  /// Authentication using a custom account.
  final CustomAccountResponse customAccount;

  /// Authentication using a Google account.
  final GoogleAccountResponse googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredentialResponse iapCredential;

  AuthenticationResponseWebsecurityscannerV1({
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

  factory AuthenticationResponseWebsecurityscannerV1.fromMap(
      Map<String, dynamic> map) {
    return AuthenticationResponseWebsecurityscannerV1(
      customAccount: CustomAccountResponse.fromMap(
          (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: GoogleAccountResponse.fromMap(
          (map['googleAccount'] as Map).cast<String, dynamic>()),
      iapCredential: IapCredentialResponse.fromMap(
          (map['iapCredential'] as Map).cast<String, dynamic>()),
    );
  }
}
