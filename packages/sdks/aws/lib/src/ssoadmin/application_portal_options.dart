// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_portal_options_sign_in_options.dart';

class ApplicationPortalOptions {
  /// Sign-in options for the access portal. See `sign_in_options` below.
  final pulumi.Input<ApplicationPortalOptionsSignInOptions>? signInOptions;

  /// Indicates whether this application is visible in the access portal. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? visibility;

  /// Creates a new [ApplicationPortalOptions].
  /// [signInOptions] Sign-in options for the access portal. See `sign_in_options` below.
  /// [visibility] Indicates whether this application is visible in the access portal. Valid values are `ENABLED` and `DISABLED`.
  ApplicationPortalOptions({this.signInOptions, this.visibility});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signInOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationPortalOptionsSignInOptions,
            Map<String, dynamic>
          >(signInOptions, (value) => value.toMap()),
      'visibility': ?visibility,
    };
  }

  factory ApplicationPortalOptions.fromMap(Map<String, dynamic> map) {
    return ApplicationPortalOptions(
      signInOptions: (() {
        final guardedValue = map['signInOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationPortalOptionsSignInOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      visibility: (() {
        final guardedValue = map['visibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
