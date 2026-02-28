// ignore_for_file: unused_element, unnecessary_cast

class GetRoutingProfileMediaConcurrencyCrossChannelBehavior {
  /// Cross-channel behavior for routing contacts across multiple channels. Valid values are `ROUTE_CURRENT_CHANNEL_ONLY`, `ROUTE_ANY_CHANNEL`.
  final String behaviorType;

  /// Creates a new [GetRoutingProfileMediaConcurrencyCrossChannelBehavior].
  /// [behaviorType] Cross-channel behavior for routing contacts across multiple channels. Valid values are `ROUTE_CURRENT_CHANNEL_ONLY`, `ROUTE_ANY_CHANNEL`.
  GetRoutingProfileMediaConcurrencyCrossChannelBehavior({
    required this.behaviorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behaviorType'] = behaviorType;
    return map;
  }

  factory GetRoutingProfileMediaConcurrencyCrossChannelBehavior.fromMap(
      Map<String, dynamic> map) {
    return GetRoutingProfileMediaConcurrencyCrossChannelBehavior(
      behaviorType: map['behaviorType'] as String,
    );
  }
}
