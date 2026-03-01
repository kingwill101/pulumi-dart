// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_model_safety_safety_setting.dart';

class GuardrailModelSafety {
  /// List of safety settings.
  /// Structure is documented below.
  final List<GuardrailModelSafetySafetySetting> safetySettings;

  /// Creates a new [GuardrailModelSafety].
  /// [safetySettings] List of safety settings.
  GuardrailModelSafety({required this.safetySettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'safetySettings':
          pulumi.Input.encodeList<
            GuardrailModelSafetySafetySetting,
            Map<String, dynamic>
          >(safetySettings, (value) => value.toMap()),
    };
  }

  factory GuardrailModelSafety.fromMap(Map<String, dynamic> map) {
    return GuardrailModelSafety(
      safetySettings:
          pulumi.Input.decodeList<GuardrailModelSafetySafetySetting>(
            map['safetySettings'],
            (value) => GuardrailModelSafetySafetySetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
