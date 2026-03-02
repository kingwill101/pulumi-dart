// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotTypeValueSelectionSettingRegexFilter {
  /// A regular expression used to validate the value of a slot.
  final pulumi.Input<String> pattern;

  /// Creates a new [V2modelsSlotTypeValueSelectionSettingRegexFilter].
  /// [pattern] A regular expression used to validate the value of a slot.
  V2modelsSlotTypeValueSelectionSettingRegexFilter({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
    };
  }

  factory V2modelsSlotTypeValueSelectionSettingRegexFilter.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeValueSelectionSettingRegexFilter(
      pattern: (map['pattern'] as String).input(),
    );
  }
}

