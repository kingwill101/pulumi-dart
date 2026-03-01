// ignore_for_file: unused_element, unnecessary_cast

import 'security_scan_config_authentication_custom_account.dart';
import 'security_scan_config_authentication_google_account.dart';

class SecurityScanConfigAuthentication {
  /// Describes authentication configuration that uses a custom account.
  /// Structure is documented below.
  final SecurityScanConfigAuthenticationCustomAccount? customAccount;

  /// Describes authentication configuration that uses a Google account.
  /// Structure is documented below.
  final SecurityScanConfigAuthenticationGoogleAccount? googleAccount;

  /// Creates a new [SecurityScanConfigAuthentication].
  /// [customAccount] Describes authentication configuration that uses a custom account.
  /// [googleAccount] Describes authentication configuration that uses a Google account.
  SecurityScanConfigAuthentication({this.customAccount, this.googleAccount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': ?customAccount == null ? null : customAccount!.toMap(),
      'googleAccount': ?googleAccount == null ? null : googleAccount!.toMap(),
    };
  }

  factory SecurityScanConfigAuthentication.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigAuthentication(
      customAccount: map['customAccount'] == null
          ? null
          : SecurityScanConfigAuthenticationCustomAccount.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>(),
            ),
      googleAccount: map['googleAccount'] == null
          ? null
          : SecurityScanConfigAuthenticationGoogleAccount.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
