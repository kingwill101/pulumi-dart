// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingSlotResolutionSetting {
  /// Specifies whether assisted slot resolution is turned on for the slot or not.
  /// Valid values are `EnhancedFallback` or `Default`.
  /// If the value is `EnhancedFallback`, assisted slot resolution is activated when Amazon Lex defaults to the `AMAZON.FallbackIntent`.
  /// If the value is `Default`, assisted slot resolution is turned off.
  final String slotResolutionStrategy;

  V2modelsSlotValueElicitationSettingSlotResolutionSetting({
    required this.slotResolutionStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['slotResolutionStrategy'] = slotResolutionStrategy;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingSlotResolutionSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingSlotResolutionSetting(
      slotResolutionStrategy: map['slotResolutionStrategy'] as String,
    );
  }
}
