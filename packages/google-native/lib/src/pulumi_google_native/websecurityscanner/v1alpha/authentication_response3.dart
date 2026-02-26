// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_response2.dart';
import 'google_account_response2.dart';

/// Scan authentication configuration.
class AuthenticationResponse3 {
  /// Authentication using a custom account.
  final CustomAccountResponse2 customAccount;

  /// Authentication using a Google account.
  final GoogleAccountResponse2 googleAccount;

  AuthenticationResponse3({
    required this.customAccount,
    required this.googleAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customAccount'] = customAccount.toMap();
    map['googleAccount'] = googleAccount.toMap();
    return map;
  }

  factory AuthenticationResponse3.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse3(
      customAccount: CustomAccountResponse2.fromMap(
          (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: GoogleAccountResponse2.fromMap(
          (map['googleAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
