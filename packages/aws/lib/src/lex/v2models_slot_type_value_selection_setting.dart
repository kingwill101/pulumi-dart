// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_value_selection_setting_advanced_recognition_setting.dart';
import 'v2models_slot_type_value_selection_setting_regex_filter.dart';

class V2modelsSlotTypeValueSelectionSetting {
  /// Provides settings that enable advanced recognition settings for slot values.
  /// You can use this to enable using slot values as a custom vocabulary for recognizing user utterances.
  /// See `advanced_recognition_setting` argument reference below.
  final List<V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting>?
      advancedRecognitionSettings;

  /// Used to validate the value of the slot.
  /// See `regex_filter` argument reference below.
  final List<V2modelsSlotTypeValueSelectionSettingRegexFilter>? regexFilters;

  /// Determines the slot resolution strategy that Amazon Lex uses to return slot type values.
  /// Valid values are `OriginalValue`, `TopResolution`, and `Concatenation`.
  final String resolutionStrategy;

  /// Creates a new [V2modelsSlotTypeValueSelectionSetting].
  /// [advancedRecognitionSettings] Provides settings that enable advanced recognition settings for slot values.
  /// [regexFilters] Used to validate the value of the slot.
  /// [resolutionStrategy] Determines the slot resolution strategy that Amazon Lex uses to return slot type values.
  V2modelsSlotTypeValueSelectionSetting({
    this.advancedRecognitionSettings,
    this.regexFilters,
    required this.resolutionStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedRecognitionSettingsValue = advancedRecognitionSettings;
    if (advancedRecognitionSettingsValue != null) {
      map['advancedRecognitionSettings'] = pulumi.Input.encodeList<
              V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting,
              Map<String, dynamic>>(
          advancedRecognitionSettingsValue, (value) => value.toMap());
    }
    final regexFiltersValue = regexFilters;
    if (regexFiltersValue != null) {
      map['regexFilters'] = pulumi.Input.encodeList<
          V2modelsSlotTypeValueSelectionSettingRegexFilter,
          Map<String, dynamic>>(regexFiltersValue, (value) => value.toMap());
    }
    map['resolutionStrategy'] = resolutionStrategy;
    return map;
  }

  factory V2modelsSlotTypeValueSelectionSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeValueSelectionSetting(
      advancedRecognitionSettings: map['advancedRecognitionSettings'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting>(
              map['advancedRecognitionSettings'],
              (value) =>
                  V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
      regexFilters: map['regexFilters'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotTypeValueSelectionSettingRegexFilter>(
              map['regexFilters'],
              (value) =>
                  V2modelsSlotTypeValueSelectionSettingRegexFilter.fromMap(
                      (value as Map).cast<String, dynamic>())),
      resolutionStrategy: map['resolutionStrategy'] as String,
    );
  }
}
