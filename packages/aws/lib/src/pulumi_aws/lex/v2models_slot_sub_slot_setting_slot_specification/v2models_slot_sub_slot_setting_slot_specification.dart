// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting.dart';

class V2modelsSlotSubSlotSettingSlotSpecification {
  final String mapBlockKey;

  /// Unique identifier assigned to the slot type.
  final String slotTypeId;

  /// Elicitation setting details for constituent sub slots of a composite slot.
  /// See the <span pulumi-lang-nodejs="`valueElicitationSetting`" pulumi-lang-dotnet="`ValueElicitationSetting`" pulumi-lang-go="`valueElicitationSetting`" pulumi-lang-python="`value_elicitation_setting`" pulumi-lang-yaml="`valueElicitationSetting`" pulumi-lang-java="`valueElicitationSetting`">`value_elicitation_setting`</span> argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting>?
      valueElicitationSettings;

  V2modelsSlotSubSlotSettingSlotSpecification({
    required this.mapBlockKey,
    required this.slotTypeId,
    this.valueElicitationSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mapBlockKey'] = mapBlockKey;
    map['slotTypeId'] = slotTypeId;
    final valueElicitationSettingsValue = valueElicitationSettings;
    if (valueElicitationSettingsValue != null) {
      map['valueElicitationSettings'] = Input.encodeList<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting,
              Map<String, dynamic>>(
          valueElicitationSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecification(
      mapBlockKey: map['mapBlockKey'] as String,
      slotTypeId: map['slotTypeId'] as String,
      valueElicitationSettings: map['valueElicitationSettings'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting>(
              map['valueElicitationSettings'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
