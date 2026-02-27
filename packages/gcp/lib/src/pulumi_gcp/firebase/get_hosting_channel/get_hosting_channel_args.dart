// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHostingChannel.
class GetHostingChannelArgs {
  /// The ID of the channel. Use `channel_id = "live"` for the default channel of a site.
  final pulumi.Input<String> channelId;

  /// The ID of the site this channel belongs to.
  final pulumi.Input<String> siteId;

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
      channelId: pulumi.Input.asInput<String>(map['channelId']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
