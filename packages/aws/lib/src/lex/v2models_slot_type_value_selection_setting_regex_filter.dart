// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotTypeValueSelectionSettingRegexFilter {
  /// A regular expression used to validate the value of a slot.
  final String pattern;

  /// Creates a new [V2modelsSlotTypeValueSelectionSettingRegexFilter].
  /// [pattern] A regular expression used to validate the value of a slot.
  V2modelsSlotTypeValueSelectionSettingRegexFilter({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pattern'] = pattern;
    return map;
  }

  factory V2modelsSlotTypeValueSelectionSettingRegexFilter.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeValueSelectionSettingRegexFilter(
      pattern: map['pattern'] as String,
    );
  }
}
