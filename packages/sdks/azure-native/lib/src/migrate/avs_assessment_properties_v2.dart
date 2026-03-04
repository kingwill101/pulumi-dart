// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avs_assessment_settings.dart';
import 'scope.dart';

/// Assessment properties class.
class AvsAssessmentPropertiesV2 {
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final pulumi.Input<String>? fallbackMachineAssessmentArmId;

  /// Gets or sets the scope of assessment.
  final pulumi.Input<Scope>? scope;

  /// Gets or sets the settings for the assessment.
  final pulumi.Input<AvsAssessmentSettings>? settings;

  /// Creates a new [AvsAssessmentPropertiesV2].
  /// [fallbackMachineAssessmentArmId] Gets or sets the machine assessment ARM ID for VM fallback.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  AvsAssessmentPropertiesV2({
    this.fallbackMachineAssessmentArmId,
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackMachineAssessmentArmId': ?fallbackMachineAssessmentArmId,
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(
        scope,
        (value) => value.toMap(),
      ),
      'settings':
          ?pulumi.Input.mapOptionalInputValue<
            AvsAssessmentSettings,
            Map<String, dynamic>
          >(settings, (value) => value.toMap()),
    };
  }

  factory AvsAssessmentPropertiesV2.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentPropertiesV2(
      fallbackMachineAssessmentArmId: (() {
        final guardedValue = map['fallbackMachineAssessmentArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Scope.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AvsAssessmentSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
