// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_routing_profile_media_concurrency_cross_channel_behavior/get_routing_profile_media_concurrency_cross_channel_behavior.dart';

class GetRoutingProfileMediaConcurrency {
  /// Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  final String channel;

  /// Number of contacts an agent can have on a channel simultaneously. Valid Range for `VOICE`: Minimum value of 1. Maximum value of 1. Valid Range for `CHAT`: Minimum value of 1. Maximum value of 10. Valid Range for `TASK`: Minimum value of 1. Maximum value of 10.
  final int concurrency;

  /// Configuration block for cross-channel behavior. Documented below.
  final List<GetRoutingProfileMediaConcurrencyCrossChannelBehavior>
      crossChannelBehaviors;

  GetRoutingProfileMediaConcurrency({
    required this.channel,
    required this.concurrency,
    required this.crossChannelBehaviors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    map['concurrency'] = concurrency;
    map['crossChannelBehaviors'] = Input.encodeList<
        GetRoutingProfileMediaConcurrencyCrossChannelBehavior,
        Map<String, dynamic>>(crossChannelBehaviors, (value) => value.toMap());
    return map;
  }

  factory GetRoutingProfileMediaConcurrency.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileMediaConcurrency(
      channel: map['channel'] as String,
      concurrency: map['concurrency'] as int,
      crossChannelBehaviors: Input.decodeList<
              GetRoutingProfileMediaConcurrencyCrossChannelBehavior>(
          map['crossChannelBehaviors'],
          (value) =>
              GetRoutingProfileMediaConcurrencyCrossChannelBehavior.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
