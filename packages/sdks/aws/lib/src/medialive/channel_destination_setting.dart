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
  ChannelDestinationSetting({
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
      passwordParam: map['passwordParam'] == null ? null : ((map['passwordParam'] as String).input()).input(),
      streamName: map['streamName'] == null ? null : ((map['streamName'] as String).input()).input(),
      url: map['url'] == null ? null : ((map['url'] as String).input()).input(),
      username: map['username'] == null ? null : ((map['username'] as String).input()).input(),
    );
  }
}

