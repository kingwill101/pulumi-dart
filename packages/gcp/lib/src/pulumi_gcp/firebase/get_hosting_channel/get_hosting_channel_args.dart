// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHostingChannel.
class GetHostingChannelArgs {
  /// The ID of the channel. Use <span pulumi-lang-nodejs="`channelId " pulumi-lang-dotnet="`ChannelId " pulumi-lang-go="`channelId " pulumi-lang-python="`channel_id " pulumi-lang-yaml="`channelId " pulumi-lang-java="`channelId ">`channel_id </span>= "live"` for the default channel of a site.
  final Input<String> channelId;

  /// The ID of the site this channel belongs to.
  final Input<String> siteId;

  GetHostingChannelArgs({
    required this.channelId,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    map['siteId'] = siteId;
    return map;
  }

  factory GetHostingChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetHostingChannelArgs(
      channelId: Input.asInput<String>(map['channelId']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
