// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelDestinationSetting {
  /// Key used to extract the password from EC2 Parameter store.
  final pulumi.Input<String>? passwordParam;
  /// Stream name RTMP destinations (URLs of type rtmp://)
  final pulumi.Input<String>? streamName;
  /// A URL specifying a destination.
  final pulumi.Input<String>? url;
  /// Username for destination.
  final pulumi.Input<String>? username;

  /// Creates a new [ChannelDestinationSetting].
  /// [passwordParam] Key used to extract the password from EC2 Parameter store.
  /// [streamName] Stream name RTMP destinations (URLs of type rtmp://)
  /// [url] A URL specifying a destination.
  /// [username] Username for destination.
  const ChannelDestinationSetting({
    this.passwordParam,
    this.streamName,
    this.url,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordParam': ?passwordParam,
      'streamName': ?streamName,
      'url': ?url,
      'username': ?username,
    };
  }

  factory ChannelDestinationSetting.fromMap(Map<String, dynamic> map) {
    return ChannelDestinationSetting(
      passwordParam: (() { final guardedValue = map['passwordParam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamName: (() { final guardedValue = map['streamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

