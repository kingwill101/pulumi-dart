// ignore_for_file: unused_element, unnecessary_cast

import '../routing_profile_media_concurrency_cross_channel_behavior/routing_profile_media_concurrency_cross_channel_behavior.dart';

class RoutingProfileMediaConcurrency {
  /// Specifies the channels that agents can handle in the Contact Control Panel (CCP). Valid values are `VOICE`, `CHAT`, `TASK`.
  final String channel;

  /// Specifies the number of contacts an agent can have on a channel simultaneously. Valid Range for `VOICE`: Minimum value of `1`. Maximum value of `1`. Valid Range for `CHAT`: Minimum value of `1`. Maximum value of `10`. Valid Range for `TASK`: Minimum value of `1`. Maximum value of `10`.
  final int concurrency;

  /// Defines the cross-channel routing behavior for each traffic type. **Out-of-band changes are only detected when this argument is explicitly configured in your Terraform configuration.** Documented below.
  final RoutingProfileMediaConcurrencyCrossChannelBehavior?
      crossChannelBehavior;

  RoutingProfileMediaConcurrency({
    required this.channel,
    required this.concurrency,
    this.crossChannelBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    map['concurrency'] = concurrency;
    final crossChannelBehaviorValue = crossChannelBehavior;
    if (crossChannelBehaviorValue != null) {
      map['crossChannelBehavior'] = crossChannelBehaviorValue.toMap();
    }
    return map;
  }

  factory RoutingProfileMediaConcurrency.fromMap(Map<String, dynamic> map) {
    return RoutingProfileMediaConcurrency(
      channel: map['channel'] as String,
      concurrency: map['concurrency'] as int,
      crossChannelBehavior: map['crossChannelBehavior'] == null
          ? null
          : RoutingProfileMediaConcurrencyCrossChannelBehavior.fromMap(
              (map['crossChannelBehavior'] as Map).cast<String, dynamic>()),
    );
  }
}
