// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account2.dart';
import 'google_account2.dart';

/// Scan authentication configuration.
class Authentication3 {
  /// Authentication using a custom account.
  final CustomAccount2? customAccount;

  /// Authentication using a Google account.
  final GoogleAccount2? googleAccount;

  Authentication3({
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

  factory Authentication3.fromMap(Map<String, dynamic> map) {
    return Authentication3(
      customAccount: map['customAccount'] == null
          ? null
          : CustomAccount2.fromMap(
              (map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: map['googleAccount'] == null
          ? null
          : GoogleAccount2.fromMap(
              (map['googleAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
