// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoutingProfileMediaConcurrencyCrossChannelBehavior {
  /// Cross-channel behavior for routing contacts across multiple channels. Valid values are `ROUTE_CURRENT_CHANNEL_ONLY`, `ROUTE_ANY_CHANNEL`.
  final pulumi.Input<String> behaviorType;

  /// Creates a new [GetRoutingProfileMediaConcurrencyCrossChannelBehavior].
  /// [behaviorType] Cross-channel behavior for routing contacts across multiple channels. Valid values are `ROUTE_CURRENT_CHANNEL_ONLY`, `ROUTE_ANY_CHANNEL`.
  GetRoutingProfileMediaConcurrencyCrossChannelBehavior({
    required this.behaviorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'behaviorType': behaviorType};
  }

  factory GetRoutingProfileMediaConcurrencyCrossChannelBehavior.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRoutingProfileMediaConcurrencyCrossChannelBehavior(
      behaviorType: pulumi.Input.fromValue(map['behaviorType'] as String),
    );
  }
}
