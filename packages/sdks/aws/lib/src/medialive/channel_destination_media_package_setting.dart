// ignore_for_file: unused_element, unnecessary_cast


class ChannelDestinationMediaPackageSetting {
  /// ID of the channel in MediaPackage that is the destination for this output group.
  final String channelId;

  /// Creates a new [ChannelDestinationMediaPackageSetting].
  /// [channelId] ID of the channel in MediaPackage that is the destination for this output group.
  ChannelDestinationMediaPackageSetting({
    required this.channelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
    };
  }

  factory ChannelDestinationMediaPackageSetting.fromMap(Map<String, dynamic> map) {
    return ChannelDestinationMediaPackageSetting(
      channelId: map['channelId'] as String,
    );
  }
}

