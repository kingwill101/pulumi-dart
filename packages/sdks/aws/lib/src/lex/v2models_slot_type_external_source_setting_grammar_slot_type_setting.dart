// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_external_source_setting_grammar_slot_type_setting_source.dart';

class V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting {
  /// Source of the grammar used to create the slot type.
  /// See `source` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource>>? sources;

  /// Creates a new [V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting].
  /// [sources] Source of the grammar used to create the slot type.
  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting({
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sources': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting(
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource>(guardedValue, (value) => V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

