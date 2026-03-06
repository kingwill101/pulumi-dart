// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_value_selection_setting_advanced_recognition_setting.dart';
import 'v2models_slot_type_value_selection_setting_regex_filter.dart';

class V2modelsSlotTypeValueSelectionSetting {
  /// Provides settings that enable advanced recognition settings for slot values.
  /// You can use this to enable using slot values as a custom vocabulary for recognizing user utterances.
  /// See `advanced_recognition_setting` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting>>? advancedRecognitionSettings;
  /// Used to validate the value of the slot.
  /// See `regex_filter` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeValueSelectionSettingRegexFilter>>? regexFilters;
  /// Determines the slot resolution strategy that Amazon Lex uses to return slot type values.
  /// Valid values are `OriginalValue`, `TopResolution`, and `Concatenation`.
  final pulumi.Input<String> resolutionStrategy;

  /// Creates a new [V2modelsSlotTypeValueSelectionSetting].
  /// [advancedRecognitionSettings] Provides settings that enable advanced recognition settings for slot values.
  /// [regexFilters] Used to validate the value of the slot.
  /// [resolutionStrategy] Determines the slot resolution strategy that Amazon Lex uses to return slot type values.
  const V2modelsSlotTypeValueSelectionSetting({
    this.advancedRecognitionSettings,
    this.regexFilters,
    required this.resolutionStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedRecognitionSettings': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting>, List<Map<String, dynamic>>>(advancedRecognitionSettings, (value) => pulumi.Input.encodeList<V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexFilters': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeValueSelectionSettingRegexFilter>, List<Map<String, dynamic>>>(regexFilters, (value) => pulumi.Input.encodeList<V2modelsSlotTypeValueSelectionSettingRegexFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resolutionStrategy': resolutionStrategy,
    };
  }

  factory V2modelsSlotTypeValueSelectionSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeValueSelectionSetting(
      advancedRecognitionSettings: (() { final guardedValue = map['advancedRecognitionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting>(guardedValue, (value) => V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regexFilters: (() { final guardedValue = map['regexFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeValueSelectionSettingRegexFilter>(guardedValue, (value) => V2modelsSlotTypeValueSelectionSettingRegexFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resolutionStrategy: pulumi.Input.fromValue(map['resolutionStrategy'] as String),
    );
  }
}

