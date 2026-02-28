// ignore_for_file: unused_element, unnecessary_cast


class ChannelHlsIngestIngestEndpoint {
  /// The password
  final String? password;
  /// The URL
  final String? url;
  /// The username
  final String? username;

  /// Creates a new [ChannelHlsIngestIngestEndpoint].
  /// [password] The password
  /// [url] The URL
  /// [username] The username
  ChannelHlsIngestIngestEndpoint({
    this.password,
    this.url,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'url': ?url,
      'username': ?username,
    };
  }

  factory ChannelHlsIngestIngestEndpoint.fromMap(Map<String, dynamic> map) {
    return ChannelHlsIngestIngestEndpoint(
      password: map['password'] == null ? null : map['password'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

