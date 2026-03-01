// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account.dart';
import 'google_account.dart';
import 'iap_credential.dart';

/// Scan authentication configuration.
class Authentication {
  /// Authentication using a custom account.
  final CustomAccount? customAccount;

  /// Authentication using a Google account.
  final GoogleAccount? googleAccount;

  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredential? iapCredential;

  /// Creates a new [Authentication].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  /// [iapCredential] Authentication using Identity-Aware-Proxy (IAP).
  Authentication({this.customAccount, this.googleAccount, this.iapCredential});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': ?customAccount == null ? null : customAccount!.toMap(),
      'googleAccount': ?googleAccount == null ? null : googleAccount!.toMap(),
      'iapCredential': ?iapCredential == null ? null : iapCredential!.toMap(),
    };
  }

  factory Authentication.fromMap(Map<String, dynamic> map) {
    return Authentication(
      customAccount: map['customAccount'] == null
          ? null
          : CustomAccount.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>(),
            ),
      googleAccount: map['googleAccount'] == null
          ? null
          : GoogleAccount.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>(),
            ),
      iapCredential: map['iapCredential'] == null
          ? null
          : IapCredential.fromMap(
              (map['iapCredential'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
