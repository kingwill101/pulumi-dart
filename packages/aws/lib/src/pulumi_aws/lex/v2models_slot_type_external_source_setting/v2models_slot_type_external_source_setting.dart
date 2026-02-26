// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_type_external_source_setting_grammar_slot_type_setting/v2models_slot_type_external_source_setting_grammar_slot_type_setting.dart';

class V2modelsSlotTypeExternalSourceSetting {
  /// Settings required for a slot type based on a grammar that you provide.
  /// See <span pulumi-lang-nodejs="`grammarSlotTypeSetting`" pulumi-lang-dotnet="`GrammarSlotTypeSetting`" pulumi-lang-go="`grammarSlotTypeSetting`" pulumi-lang-python="`grammar_slot_type_setting`" pulumi-lang-yaml="`grammarSlotTypeSetting`" pulumi-lang-java="`grammarSlotTypeSetting`">`grammar_slot_type_setting`</span> argument reference below.
  final List<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting>?
      grammarSlotTypeSettings;

  V2modelsSlotTypeExternalSourceSetting({
    this.grammarSlotTypeSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grammarSlotTypeSettingsValue = grammarSlotTypeSettings;
    if (grammarSlotTypeSettingsValue != null) {
      map['grammarSlotTypeSettings'] = Input.encodeList<
              V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting,
              Map<String, dynamic>>(
          grammarSlotTypeSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotTypeExternalSourceSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeExternalSourceSetting(
      grammarSlotTypeSettings: map['grammarSlotTypeSettings'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting>(
              map['grammarSlotTypeSettings'],
              (value) =>
                  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
