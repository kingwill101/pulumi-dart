// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting.dart';

class V2modelsSlotSubSlotSettingSlotSpecification {
  final pulumi.Input<String> mapBlockKey;
  /// Unique identifier assigned to the slot type.
  final pulumi.Input<String> slotTypeId;
  /// Elicitation setting details for constituent sub slots of a composite slot.
  /// See the `valueElicitationSetting` argument reference below.
  final pulumi.Input<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting>?>? valueElicitationSettings;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecification].
  /// [mapBlockKey] Required.
  /// [slotTypeId] Unique identifier assigned to the slot type.
  /// [valueElicitationSettings] Elicitation setting details for constituent sub slots of a composite slot.
  const V2modelsSlotSubSlotSettingSlotSpecification({
    required this.mapBlockKey,
    required this.slotTypeId,
    this.valueElicitationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'slotTypeId': slotTypeId,
      'valueElicitationSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting>, List<Map<String, dynamic>>>(valueElicitationSettings, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecification(
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      slotTypeId: pulumi.Input.fromValue(map['slotTypeId'] as String),
      valueElicitationSettings: (() { final guardedValue = map['valueElicitationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting>(guardedValue, (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
