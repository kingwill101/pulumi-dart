// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_response_websecurityscanner_v1alpha.dart';
import 'google_account_response_websecurityscanner_v1alpha.dart';

/// Scan authentication configuration.
class AuthenticationResponseWebsecurityscannerV1alpha {
  /// Authentication using a custom account.
  final CustomAccountResponseWebsecurityscannerV1alpha customAccount;

  /// Authentication using a Google account.
  final GoogleAccountResponseWebsecurityscannerV1alpha googleAccount;

  AuthenticationResponseWebsecurityscannerV1alpha({
    required this.customAccount,
    required this.googleAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customAccount'] = customAccount.toMap();
    map['googleAccount'] = googleAccount.toMap();
    return map;
  }

  factory AuthenticationResponseWebsecurityscannerV1alpha.fromMap(
      Map<String, dynamic> map) {
    return AuthenticationResponseWebsecurityscannerV1alpha(
      customAccount: CustomAccountResponseWebsecurityscannerV1alpha.fromMap(
          (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: GoogleAccountResponseWebsecurityscannerV1alpha.fromMap(
          (map['googleAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
