// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting {
  /// Enables using the slot values as a custom vocabulary for recognizing user utterances.
  /// Valid value is `UseSlotValuesAsCustomVocabulary`.
  final pulumi.Input<String>? audioRecognitionStrategy;

  /// Creates a new [V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting].
  /// [audioRecognitionStrategy] Enables using the slot values as a custom vocabulary for recognizing user utterances.
  V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting({
    this.audioRecognitionStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioRecognitionStrategy': ?audioRecognitionStrategy,
    };
  }

  factory V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSetting(
      audioRecognitionStrategy: map['audioRecognitionStrategy'] == null ? null : (map['audioRecognitionStrategy'] as String).input(),
    );
  }
}

