// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelHlsIngestIngestEndpoint {
  /// The password
  final pulumi.Input<String?>? password;
  /// The URL
  final pulumi.Input<String?>? url;
  /// The username
  final pulumi.Input<String?>? username;

  /// Creates a new [ChannelHlsIngestIngestEndpoint].
  /// [password] The password
  /// [url] The URL
  /// [username] The username
  const ChannelHlsIngestIngestEndpoint({
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
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
