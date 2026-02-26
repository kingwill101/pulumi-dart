// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account3.dart';
import 'google_account3.dart';
import 'iap_credential2.dart';

/// Scan authentication configuration.
class Authentication4 {
  /// Authentication using a custom account.
  final CustomAccount3? customAccount;

  /// Authentication using a Google account.
  final GoogleAccount3? googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredential2? iapCredential;

  Authentication4({
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

  factory Authentication4.fromMap(Map<String, dynamic> map) {
    return Authentication4(
      customAccount: map['customAccount'] == null
          ? null
          : CustomAccount3.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: map['googleAccount'] == null
          ? null
          : GoogleAccount3.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>()),
      iapCredential: map['iapCredential'] == null
          ? null
          : IapCredential2.fromMap(
              (map['iapCredential'] as Map).cast<String, dynamic>()),
    );
  }
}
