// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the app registration for the Twitter provider.
class TwitterRegistrationResponse {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// This setting is required for enabling Twitter Sign-In.
  /// Twitter Sign-In documentation: https://dev.twitter.com/web/sign-in
  final pulumi.Input<String>? consumerKey;

  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  /// application used for sign-in.
  final pulumi.Input<String>? consumerSecretSettingName;

  /// Creates a new [TwitterRegistrationResponse].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  TwitterRegistrationResponse({
    this.consumerKey,
    this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': ?consumerKey,
      'consumerSecretSettingName': ?consumerSecretSettingName,
    };
  }

  factory TwitterRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return TwitterRegistrationResponse(
      consumerKey: (() {
        final guardedValue = map['consumerKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      consumerSecretSettingName: (() {
        final guardedValue = map['consumerSecretSettingName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
