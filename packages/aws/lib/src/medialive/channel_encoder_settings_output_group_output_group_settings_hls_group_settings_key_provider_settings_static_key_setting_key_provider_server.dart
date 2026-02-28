// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer {
  final String? passwordParam;
  final String uri;
  final String? username;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer].
  /// [passwordParam] Optional.
  /// [uri] Required.
  /// [username] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordParamValue = passwordParam;
    if (passwordParamValue != null) {
      map['passwordParam'] = passwordParamValue;
    }
    map['uri'] = uri;
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer(
      passwordParam:
          map['passwordParam'] == null ? null : map['passwordParam'] as String,
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
