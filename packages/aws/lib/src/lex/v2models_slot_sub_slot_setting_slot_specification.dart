// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting.dart';

class V2modelsSlotSubSlotSettingSlotSpecification {
  final String mapBlockKey;

  /// Unique identifier assigned to the slot type.
  final String slotTypeId;

  /// Elicitation setting details for constituent sub slots of a composite slot.
  /// See the `value_elicitation_setting` argument reference below.
  final List<
    V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting
  >?
  valueElicitationSettings;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecification].
  /// [mapBlockKey] Required.
  /// [slotTypeId] Unique identifier assigned to the slot type.
  /// [valueElicitationSettings] Elicitation setting details for constituent sub slots of a composite slot.
  V2modelsSlotSubSlotSettingSlotSpecification({
    required this.mapBlockKey,
    required this.slotTypeId,
    this.valueElicitationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'slotTypeId': slotTypeId,
      'valueElicitationSettings': ?valueElicitationSettings == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting,
              Map<String, dynamic>
            >(valueElicitationSettings!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotSubSlotSettingSlotSpecification(
      mapBlockKey: map['mapBlockKey'] as String,
      slotTypeId: map['slotTypeId'] as String,
      valueElicitationSettings: map['valueElicitationSettings'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting
            >(
              map['valueElicitationSettings'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
