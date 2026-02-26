// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_response3.dart';
import 'google_account_response3.dart';
import 'iap_credential_response2.dart';

/// Scan authentication configuration.
class AuthenticationResponse4 {
  /// Authentication using a custom account.
  final CustomAccountResponse3 customAccount;

  /// Authentication using a Google account.
  final GoogleAccountResponse3 googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredentialResponse2 iapCredential;

  AuthenticationResponse4({
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

  factory AuthenticationResponse4.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse4(
      customAccount: CustomAccountResponse3.fromMap(
          (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: GoogleAccountResponse3.fromMap(
          (map['googleAccount'] as Map).cast<String, dynamic>()),
      iapCredential: IapCredentialResponse2.fromMap(
          (map['iapCredential'] as Map).cast<String, dynamic>()),
    );
  }
}
