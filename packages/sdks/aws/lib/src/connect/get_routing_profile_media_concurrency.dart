// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routing_profile_media_concurrency_cross_channel_behavior.dart';

class GetRoutingProfileMediaConcurrency {
  /// Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  final pulumi.Input<String> channel;
  /// Number of contacts an agent can have on a channel simultaneously. Valid Range for `VOICE`: Minimum value of 1. Maximum value of 1. Valid Range for `CHAT`: Minimum value of 1. Maximum value of 10. Valid Range for `TASK`: Minimum value of 1. Maximum value of 10.
  final pulumi.Input<int> concurrency;
  /// Configuration block for cross-channel behavior. Documented below.
  final pulumi.Input<List<GetRoutingProfileMediaConcurrencyCrossChannelBehavior>> crossChannelBehaviors;

  /// Creates a new [GetRoutingProfileMediaConcurrency].
  /// [channel] Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  /// [concurrency] Number of contacts an agent can have on a channel simultaneously. Valid Range for `VOICE`: Minimum value of 1. Maximum value of 1. Valid Range for `CHAT`: Minimum value of 1. Maximum value of 10. Valid Range for `TASK`: Minimum value of 1. Maximum value of 10.
  /// [crossChannelBehaviors] Configuration block for cross-channel behavior. Documented below.
  const GetRoutingProfileMediaConcurrency({
    required this.channel,
    required this.concurrency,
    required this.crossChannelBehaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'concurrency': concurrency,
      'crossChannelBehaviors': pulumi.Input.mapInputValue<List<GetRoutingProfileMediaConcurrencyCrossChannelBehavior>, List<Map<String, dynamic>>>(crossChannelBehaviors, (value) => pulumi.Input.encodeList<GetRoutingProfileMediaConcurrencyCrossChannelBehavior, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRoutingProfileMediaConcurrency.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileMediaConcurrency(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      concurrency: pulumi.Input.fromValue(map['concurrency'] as int),
      crossChannelBehaviors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoutingProfileMediaConcurrencyCrossChannelBehavior>(map['crossChannelBehaviors']!, (value) => GetRoutingProfileMediaConcurrencyCrossChannelBehavior.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

