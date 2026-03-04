// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingProfileMediaConcurrencyCrossChannelBehavior {
  /// Specifies the cross-channel behavior for routing contacts across multiple channels. Valid values are `ROUTE_CURRENT_CHANNEL_ONLY` and `ROUTE_ANY_CHANNEL`. `ROUTE_CURRENT_CHANNEL_ONLY` restricts agents to receive contacts only from the channel they are currently handling. `ROUTE_ANY_CHANNEL` allows agents to receive contacts from any channel regardless of what they are currently handling.
  final pulumi.Input<String> behaviorType;

  /// Creates a new [RoutingProfileMediaConcurrencyCrossChannelBehavior].
  /// [behaviorType] Specifies the cross-channel behavior for routing contacts across multiple channels. Valid values are `ROUTE_CURRENT_CHANNEL_ONLY` and `ROUTE_ANY_CHANNEL`. `ROUTE_CURRENT_CHANNEL_ONLY` restricts agents to receive contacts only from the channel they are currently handling. `ROUTE_ANY_CHANNEL` allows agents to receive contacts from any channel regardless of what they are currently handling.
  RoutingProfileMediaConcurrencyCrossChannelBehavior({
    required this.behaviorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'behaviorType': behaviorType};
  }

  factory RoutingProfileMediaConcurrencyCrossChannelBehavior.fromMap(
    Map<String, dynamic> map,
  ) {
    return RoutingProfileMediaConcurrencyCrossChannelBehavior(
      behaviorType: pulumi.Input.fromValue(map['behaviorType'] as String),
    );
  }
}
