// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_type_external_source_setting_grammar_slot_type_setting_source/v2models_slot_type_external_source_setting_grammar_slot_type_setting_source.dart';

class V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting {
  /// Source of the grammar used to create the slot type.
  /// See <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> argument reference below.
  final List<V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource>?
      sources;

  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSetting({
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = Input.encodeList<
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
          : Input.decodeList<
                  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource>(
              map['sources'],
              (value) =>
                  V2modelsSlotTypeExternalSourceSettingGrammarSlotTypeSettingSource
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
