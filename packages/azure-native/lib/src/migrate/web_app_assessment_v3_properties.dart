// ignore_for_file: unused_element, unnecessary_cast

import 'scope.dart';
import 'web_app_assessment_settings.dart';

/// WebApp assessment resource properties.
class WebAppAssessmentV3Properties {
  /// Gets or sets the machine assessment ARM ID for VM fallback.
  final String? fallbackMachineAssessmentArmId;
  /// Gets or sets the scope of assessment.
  final Scope? scope;
  /// Gets or sets the settings for the assessment.
  final WebAppAssessmentSettings? settings;

  /// Creates a new [WebAppAssessmentV3Properties].
  /// [fallbackMachineAssessmentArmId] Gets or sets the machine assessment ARM ID for VM fallback.
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  WebAppAssessmentV3Properties({
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

  factory WebAppAssessmentV3Properties.fromMap(Map<String, dynamic> map) {
    return WebAppAssessmentV3Properties(
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : map['fallbackMachineAssessmentArmId'] as String,
      scope: map['scope'] == null ? null : Scope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : WebAppAssessmentSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

