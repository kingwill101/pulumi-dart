// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_version_snapshot_guardrail_model_safety_safety_setting/app_version_snapshot_guardrail_model_safety_safety_setting.dart';

class AppVersionSnapshotGuardrailModelSafety {
  /// (Output)
  /// List of safety settings.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailModelSafetySafetySetting>?
      safetySettings;

  AppVersionSnapshotGuardrailModelSafety({
    this.safetySettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final safetySettingsValue = safetySettings;
    if (safetySettingsValue != null) {
      map['safetySettings'] = pulumi.Input.encodeList<
          AppVersionSnapshotGuardrailModelSafetySafetySetting,
          Map<String, dynamic>>(safetySettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotGuardrailModelSafety.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailModelSafety(
      safetySettings: map['safetySettings'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotGuardrailModelSafetySafetySetting>(
              map['safetySettings'],
              (value) =>
                  AppVersionSnapshotGuardrailModelSafetySafetySetting.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
