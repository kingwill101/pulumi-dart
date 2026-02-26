// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account.dart';
import 'google_account.dart';
import 'iap_credential.dart';

/// Scan authentication configuration.
class Authentication2 {
  /// Authentication using a custom account.
  final CustomAccount? customAccount;

  /// Authentication using a Google account.
  final GoogleAccount? googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredential? iapCredential;

  Authentication2({
    this.customAccount,
    this.googleAccount,
    this.iapCredential,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customAccountValue = customAccount;
    if (customAccountValue != null) {
      map['customAccount'] = customAccountValue.toMap();
    }
    final googleAccountValue = googleAccount;
    if (googleAccountValue != null) {
      map['googleAccount'] = googleAccountValue.toMap();
    }
    final iapCredentialValue = iapCredential;
    if (iapCredentialValue != null) {
      map['iapCredential'] = iapCredentialValue.toMap();
    }
    return map;
  }

  factory Authentication2.fromMap(Map<String, dynamic> map) {
    return Authentication2(
      customAccount: map['customAccount'] == null
          ? null
          : CustomAccount.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: map['googleAccount'] == null
          ? null
          : GoogleAccount.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>()),
      iapCredential: map['iapCredential'] == null
          ? null
          : IapCredential.fromMap(
              (map['iapCredential'] as Map).cast<String, dynamic>()),
    );
  }
}
