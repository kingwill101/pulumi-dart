// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelHlsIngestIngestEndpoint {
  /// The password
  final pulumi.Input<String>? password;
  /// The URL
  final pulumi.Input<String>? url;
  /// The username
  final pulumi.Input<String>? username;

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
      password: map['password'] == null ? null : (map['password'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

