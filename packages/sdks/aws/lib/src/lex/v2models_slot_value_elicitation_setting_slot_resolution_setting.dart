// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotValueElicitationSettingSlotResolutionSetting {
  /// Specifies whether assisted slot resolution is turned on for the slot or not.
  /// Valid values are `EnhancedFallback` or `Default`.
  /// If the value is `EnhancedFallback`, assisted slot resolution is activated when Amazon Lex defaults to the `AMAZON.FallbackIntent`.
  /// If the value is `Default`, assisted slot resolution is turned off.
  final pulumi.Input<String> slotResolutionStrategy;

  /// Creates a new [V2modelsSlotValueElicitationSettingSlotResolutionSetting].
  /// [slotResolutionStrategy] Specifies whether assisted slot resolution is turned on for the slot or not.
  V2modelsSlotValueElicitationSettingSlotResolutionSetting({
    required this.slotResolutionStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slotResolutionStrategy': slotResolutionStrategy,
    };
  }

  factory V2modelsSlotValueElicitationSettingSlotResolutionSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingSlotResolutionSetting(
      slotResolutionStrategy: pulumi.Input.fromValue(map['slotResolutionStrategy'] as String),
    );
  }
}

