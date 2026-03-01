// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotAuthSettingsV2TwitterV2 {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final String consumerKey;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  ///
  /// !> **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final String consumerSecretSettingName;

  /// Creates a new [WindowsWebAppSlotAuthSettingsV2TwitterV2].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  WindowsWebAppSlotAuthSettingsV2TwitterV2({
    required this.consumerKey,
    required this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecretSettingName': consumerSecretSettingName,
    };
  }

  factory WindowsWebAppSlotAuthSettingsV2TwitterV2.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotAuthSettingsV2TwitterV2(
      consumerKey: map['consumerKey'] as String,
      consumerSecretSettingName: map['consumerSecretSettingName'] as String,
    );
  }
}

