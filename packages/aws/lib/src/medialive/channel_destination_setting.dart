// ignore_for_file: unused_element, unnecessary_cast

class ChannelDestinationSetting {
  /// Key used to extract the password from EC2 Parameter store.
  final String? passwordParam;

  /// Stream name RTMP destinations (URLs of type rtmp://)
  final String? streamName;

  /// A URL specifying a destination.
  final String? url;

  /// Username for destination.
  final String? username;

  /// Creates a new [ChannelDestinationSetting].
  /// [passwordParam] Key used to extract the password from EC2 Parameter store.
  /// [streamName] Stream name RTMP destinations (URLs of type rtmp://)
  /// [url] A URL specifying a destination.
  /// [username] Username for destination.
  ChannelDestinationSetting({
    this.passwordParam,
    this.streamName,
    this.url,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordParamValue = passwordParam;
    if (passwordParamValue != null) {
      map['passwordParam'] = passwordParamValue;
    }
    final streamNameValue = streamName;
    if (streamNameValue != null) {
      map['streamName'] = streamNameValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ChannelDestinationSetting.fromMap(Map<String, dynamic> map) {
    return ChannelDestinationSetting(
      passwordParam:
          map['passwordParam'] == null ? null : map['passwordParam'] as String,
      streamName:
          map['streamName'] == null ? null : map['streamName'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
