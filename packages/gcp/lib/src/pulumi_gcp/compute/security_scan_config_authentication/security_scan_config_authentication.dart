// ignore_for_file: unused_element, unnecessary_cast

import '../security_scan_config_authentication_custom_account/security_scan_config_authentication_custom_account.dart';
import '../security_scan_config_authentication_google_account/security_scan_config_authentication_google_account.dart';

class SecurityScanConfigAuthentication {
  /// Describes authentication configuration that uses a custom account.
  /// Structure is documented below.
  final SecurityScanConfigAuthenticationCustomAccount? customAccount;

  /// Describes authentication configuration that uses a Google account.
  /// Structure is documented below.
  final SecurityScanConfigAuthenticationGoogleAccount? googleAccount;

  SecurityScanConfigAuthentication({
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

  factory SecurityScanConfigAuthentication.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigAuthentication(
      customAccount: map['customAccount'] == null
          ? null
          : SecurityScanConfigAuthenticationCustomAccount.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: map['googleAccount'] == null
          ? null
          : SecurityScanConfigAuthenticationGoogleAccount.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
