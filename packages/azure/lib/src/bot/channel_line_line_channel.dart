// ignore_for_file: unused_element, unnecessary_cast


class ChannelLineLineChannel {
  /// The access token which is used to call the Line Channel API.
  final String accessToken;
  /// The secret which is used to access the Line Channel.
  final String secret;

  /// Creates a new [ChannelLineLineChannel].
  /// [accessToken] The access token which is used to call the Line Channel API.
  /// [secret] The secret which is used to access the Line Channel.
  ChannelLineLineChannel({
    required this.accessToken,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'secret': secret,
    };
  }

  factory ChannelLineLineChannel.fromMap(Map<String, dynamic> map) {
    return ChannelLineLineChannel(
      accessToken: map['accessToken'] as String,
      secret: map['secret'] as String,
    );
  }
}

