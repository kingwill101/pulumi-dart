// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_websecurityscanner_v1alpha.dart';
import 'google_account_websecurityscanner_v1alpha.dart';

/// Scan authentication configuration.
class AuthenticationWebsecurityscannerV1alpha {
  /// Authentication using a custom account.
  final CustomAccountWebsecurityscannerV1alpha? customAccount;

  /// Authentication using a Google account.
  final GoogleAccountWebsecurityscannerV1alpha? googleAccount;

  /// Creates a new [AuthenticationWebsecurityscannerV1alpha].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  AuthenticationWebsecurityscannerV1alpha({
    this.customAccount,
    this.googleAccount,
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
    return map;
  }

  factory AuthenticationWebsecurityscannerV1alpha.fromMap(
      Map<String, dynamic> map) {
    return AuthenticationWebsecurityscannerV1alpha(
      customAccount: map['customAccount'] == null
          ? null
          : CustomAccountWebsecurityscannerV1alpha.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: map['googleAccount'] == null
          ? null
          : GoogleAccountWebsecurityscannerV1alpha.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
