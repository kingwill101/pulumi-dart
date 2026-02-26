// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate {
  final String? passwordParam;
  final String uri;
  final String? username;

  ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate({
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

  factory ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate(
      passwordParam:
          map['passwordParam'] == null ? null : map['passwordParam'] as String,
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
