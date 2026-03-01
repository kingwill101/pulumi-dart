// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAvailBlankingAvailBlankingImage {
  /// Key used to extract the password from EC2 Parameter store.
  final String? passwordParam;

  /// Path to a file accessible to the live stream.
  final String uri;

  /// . Username to be used.
  final String? username;

  /// Creates a new [ChannelEncoderSettingsAvailBlankingAvailBlankingImage].
  /// [passwordParam] Key used to extract the password from EC2 Parameter store.
  /// [uri] Path to a file accessible to the live stream.
  /// [username] . Username to be used.
  ChannelEncoderSettingsAvailBlankingAvailBlankingImage({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordParam': ?passwordParam,
      'uri': uri,
      'username': ?username,
    };
  }

  factory ChannelEncoderSettingsAvailBlankingAvailBlankingImage.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAvailBlankingAvailBlankingImage(
      passwordParam: map['passwordParam'] == null
          ? null
          : map['passwordParam'] as String,
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
