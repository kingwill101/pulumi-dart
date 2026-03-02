// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_profile_media_concurrency_cross_channel_behavior.dart';

class RoutingProfileMediaConcurrency {
  /// Specifies the channels that agents can handle in the Contact Control Panel (CCP). Valid values are `VOICE`, `CHAT`, `TASK`.
  final pulumi.Input<String> channel;
  /// Specifies the number of contacts an agent can have on a channel simultaneously. Valid Range for `VOICE`: Minimum value of `1`. Maximum value of `1`. Valid Range for `CHAT`: Minimum value of `1`. Maximum value of `10`. Valid Range for `TASK`: Minimum value of `1`. Maximum value of `10`.
  final pulumi.Input<int> concurrency;
  /// Defines the cross-channel routing behavior for each traffic type. **Out-of-band changes are only detected when this argument is explicitly configured in your Terraform configuration.** Documented below.
  final pulumi.Input<RoutingProfileMediaConcurrencyCrossChannelBehavior>? crossChannelBehavior;

  /// Creates a new [RoutingProfileMediaConcurrency].
  /// [channel] Specifies the channels that agents can handle in the Contact Control Panel (CCP). Valid values are `VOICE`, `CHAT`, `TASK`.
  /// [concurrency] Specifies the number of contacts an agent can have on a channel simultaneously. Valid Range for `VOICE`: Minimum value of `1`. Maximum value of `1`. Valid Range for `CHAT`: Minimum value of `1`. Maximum value of `10`. Valid Range for `TASK`: Minimum value of `1`. Maximum value of `10`.
  /// [crossChannelBehavior] Defines the cross-channel routing behavior for each traffic type. **Out-of-band changes are only detected when this argument is explicitly configured in your Terraform configuration.** Documented below.
  RoutingProfileMediaConcurrency({
    required this.channel,
    required this.concurrency,
    this.crossChannelBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'concurrency': concurrency,
      'crossChannelBehavior': ?pulumi.Input.mapOptionalInputValue<RoutingProfileMediaConcurrencyCrossChannelBehavior, Map<String, dynamic>>(crossChannelBehavior, (value) => value.toMap()),
    };
  }

  factory RoutingProfileMediaConcurrency.fromMap(Map<String, dynamic> map) {
    return RoutingProfileMediaConcurrency(
      channel: (map['channel'] as String).input(),
      concurrency: (map['concurrency'] as int).input(),
      crossChannelBehavior: map['crossChannelBehavior'] == null ? null : (RoutingProfileMediaConcurrencyCrossChannelBehavior.fromMap((map['crossChannelBehavior'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

