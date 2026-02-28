// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_external_source_setting_grammar_slot_type_setting_source.dart';

class V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting {
  /// Source of the grammar used to create the slot type.
  /// See `source` argument reference below.
  final List<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource>?
      sources;

  /// Creates a new [V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting].
  /// [sources] Source of the grammar used to create the slot type.
  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting({
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = pulumi.Input.encodeList<
          V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource,
          Map<String, dynamic>>(sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting(
      sources: map['sources'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource>(
              map['sources'],
              (value) =>
                  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
