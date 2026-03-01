// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppAuthSettingsTwitter {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final String consumerKey;
  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`.
  final String? consumerSecret;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`.
  final String? consumerSecretSettingName;

  /// Creates a new [LinuxFunctionAppAuthSettingsTwitter].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`.
  LinuxFunctionAppAuthSettingsTwitter({
    required this.consumerKey,
    this.consumerSecret,
    this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': ?consumerSecret,
      'consumerSecretSettingName': ?consumerSecretSettingName,
    };
  }

  factory LinuxFunctionAppAuthSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsTwitter(
      consumerKey: map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] == null ? null : map['consumerSecret'] as String,
      consumerSecretSettingName: map['consumerSecretSettingName'] == null ? null : map['consumerSecretSettingName'] as String,
    );
  }
}

