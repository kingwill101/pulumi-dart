// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppAuthSettingTwitter {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final String consumerKey;
  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  final String consumerSecret;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  final String consumerSecretSettingName;

  /// Creates a new [GetWindowsWebAppAuthSettingTwitter].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  GetWindowsWebAppAuthSettingTwitter({
    required this.consumerKey,
    required this.consumerSecret,
    required this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
      'consumerSecretSettingName': consumerSecretSettingName,
    };
  }

  factory GetWindowsWebAppAuthSettingTwitter.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSettingTwitter(
      consumerKey: map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] as String,
      consumerSecretSettingName: map['consumerSecretSettingName'] as String,
    );
  }
}

