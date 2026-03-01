// ignore_for_file: unused_element, unnecessary_cast

import 'avs_assessment_settings.dart';
import 'scope.dart';

/// Assessment properties class.
class AvsAssessmentPropertiesV2 {
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final String? fallbackMachineAssessmentArmId;
  /// Gets or sets the scope of assessment.
  final Scope? scope;
  /// Gets or sets the settings for the assessment.
  final AvsAssessmentSettings? settings;

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
      'scope': ?scope == null ? null : scope!.toMap(),
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory AvsAssessmentPropertiesV2.fromMap(Map<String, dynamic> map) {
    return AvsAssessmentPropertiesV2(
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : map['fallbackMachineAssessmentArmId'] as String,
      scope: map['scope'] == null ? null : Scope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : AvsAssessmentSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

