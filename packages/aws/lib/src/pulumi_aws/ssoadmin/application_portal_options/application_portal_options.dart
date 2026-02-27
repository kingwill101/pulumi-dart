// ignore_for_file: unused_element, unnecessary_cast

import '../application_portal_options_sign_in_options/application_portal_options_sign_in_options.dart';

class ApplicationPortalOptions {
  /// Sign-in options for the access portal. See `sign_in_options` below.
  final ApplicationPortalOptionsSignInOptions? signInOptions;

  /// Indicates whether this application is visible in the access portal. Valid values are `ENABLED` and `DISABLED`.
  final String? visibility;

  ApplicationPortalOptions({
    this.signInOptions,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final signInOptionsValue = signInOptions;
    if (signInOptionsValue != null) {
      map['signInOptions'] = signInOptionsValue.toMap();
    }
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] = visibilityValue;
    }
    return map;
  }

  factory ApplicationPortalOptions.fromMap(Map<String, dynamic> map) {
    return ApplicationPortalOptions(
      signInOptions: map['signInOptions'] == null
          ? null
          : ApplicationPortalOptionsSignInOptions.fromMap(
              (map['signInOptions'] as Map).cast<String, dynamic>()),
      visibility:
          map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}
