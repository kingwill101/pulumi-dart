// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_response.dart';
import 'google_account_response.dart';
import 'iap_credential_response.dart';

/// Scan authentication configuration.
class AuthenticationResponse2 {
  /// Authentication using a custom account.
  final CustomAccountResponse customAccount;

  /// Authentication using a Google account.
  final GoogleAccountResponse googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredentialResponse iapCredential;

  AuthenticationResponse2({
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

  factory AuthenticationResponse2.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse2(
      customAccount: CustomAccountResponse.fromMap(
          (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: GoogleAccountResponse.fromMap(
          (map['googleAccount'] as Map).cast<String, dynamic>()),
      iapCredential: IapCredentialResponse.fromMap(
          (map['iapCredential'] as Map).cast<String, dynamic>()),
    );
  }
}
