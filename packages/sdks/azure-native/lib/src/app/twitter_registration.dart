// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the app registration for the Twitter provider.
class TwitterRegistration {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// This setting is required for enabling Twitter Sign-In.
  /// Twitter Sign-In documentation: https://dev.twitter.com/web/sign-in
  final String? consumerKey;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  /// application used for sign-in.
  final String? consumerSecretSettingName;

  /// Creates a new [TwitterRegistration].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter
  TwitterRegistration({
    this.consumerKey,
    this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': ?consumerKey,
      'consumerSecretSettingName': ?consumerSecretSettingName,
    };
  }

  factory TwitterRegistration.fromMap(Map<String, dynamic> map) {
    return TwitterRegistration(
      consumerKey: map['consumerKey'] == null ? null : map['consumerKey'] as String,
      consumerSecretSettingName: map['consumerSecretSettingName'] == null ? null : map['consumerSecretSettingName'] as String,
    );
  }
}

