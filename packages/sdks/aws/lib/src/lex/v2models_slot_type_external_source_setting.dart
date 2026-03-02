// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_external_source_setting_grammar_slot_type_setting.dart';

class V2modelsSlotTypeExternalSourceSetting {
  /// Settings required for a slot type based on a grammar that you provide.
  /// See `grammar_slot_type_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting>>? grammarSlotTypeSettings;

  /// Creates a new [V2modelsSlotTypeExternalSourceSetting].
  /// [grammarSlotTypeSettings] Settings required for a slot type based on a grammar that you provide.
  V2modelsSlotTypeExternalSourceSetting({
    this.grammarSlotTypeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grammarSlotTypeSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting>, List<Map<String, dynamic>>>(grammarSlotTypeSettings, (value) => pulumi.Input.encodeList<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotTypeExternalSourceSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeExternalSourceSetting(
      grammarSlotTypeSettings: map['grammarSlotTypeSettings'] == null ? null : ((pulumi.Input.decodeList<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting>(map['grammarSlotTypeSettings']!, (value) => V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

