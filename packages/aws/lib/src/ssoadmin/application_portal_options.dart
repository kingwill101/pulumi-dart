// ignore_for_file: unused_element, unnecessary_cast

import 'application_portal_options_sign_in_options.dart';

class ApplicationPortalOptions {
  /// Sign-in options for the access portal. See `sign_in_options` below.
  final ApplicationPortalOptionsSignInOptions? signInOptions;

  /// Indicates whether this application is visible in the access portal. Valid values are `ENABLED` and `DISABLED`.
  final String? visibility;

  /// Creates a new [ApplicationPortalOptions].
  /// [signInOptions] Sign-in options for the access portal. See `sign_in_options` below.
  /// [visibility] Indicates whether this application is visible in the access portal. Valid values are `ENABLED` and `DISABLED`.
  ApplicationPortalOptions({this.signInOptions, this.visibility});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signInOptions': ?signInOptions == null ? null : signInOptions!.toMap(),
      'visibility': ?visibility,
    };
  }

  factory ApplicationPortalOptions.fromMap(Map<String, dynamic> map) {
    return ApplicationPortalOptions(
      signInOptions: map['signInOptions'] == null
          ? null
          : ApplicationPortalOptionsSignInOptions.fromMap(
              (map['signInOptions'] as Map).cast<String, dynamic>(),
            ),
      visibility: map['visibility'] == null
          ? null
          : map['visibility'] as String,
    );
  }
}
