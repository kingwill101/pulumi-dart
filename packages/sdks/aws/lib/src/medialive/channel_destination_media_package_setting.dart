// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelDestinationMediaPackageSetting {
  /// ID of the channel in MediaPackage that is the destination for this output group.
  final pulumi.Input<String> channelId;

  /// Creates a new [ChannelDestinationMediaPackageSetting].
  /// [channelId] ID of the channel in MediaPackage that is the destination for this output group.
  const ChannelDestinationMediaPackageSetting({
    required this.channelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
    };
  }

  factory ChannelDestinationMediaPackageSetting.fromMap(Map<String, dynamic> map) {
    return ChannelDestinationMediaPackageSetting(
      channelId: pulumi.Input.fromValue(map['channelId'] as String),
    );
  }
}

