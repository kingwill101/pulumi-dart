// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_hosting_channel_get_hosting_channel_args_doc}
/// Arguments for getHostingChannel.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_hosting_channel_get_hosting_channel_args_doc}
class GetHostingChannelArgs {
  /// The ID of the channel. Use `channel_id = "live"` for the default channel of a site.
  final pulumi.Input<String> channelId;

  /// The ID of the site this channel belongs to.
  final pulumi.Input<String> siteId;

  /// Creates a new [GetHostingChannelArgs].
  /// [channelId] The ID of the channel. Use `channel_id = "live"` for the default channel of a site.
  /// [siteId] The ID of the site this channel belongs to.
  GetHostingChannelArgs({
    required String channelId,
    required String siteId,
  })  : channelId = pulumi.Input.asInput<String>(channelId),
        siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    map['siteId'] = siteId;
    return map;
  }

  factory GetHostingChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetHostingChannelArgs(
      channelId: map['channelId'] as String,
      siteId: map['siteId'] as String,
    );
  }
}
