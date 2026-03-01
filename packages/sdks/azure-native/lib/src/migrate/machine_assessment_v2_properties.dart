// ignore_for_file: unused_element, unnecessary_cast

import 'machine_assessment_settings.dart';
import 'scope.dart';

/// Assessment properties class.
class MachineAssessmentV2Properties {
  /// Gets or sets the scope of assessment.
  final Scope? scope;
  /// Gets or sets the settings for the assessment.
  final MachineAssessmentSettings? settings;

  /// Creates a new [MachineAssessmentV2Properties].
  /// [scope] Gets or sets the scope of assessment.
  /// [settings] Gets or sets the settings for the assessment.
  MachineAssessmentV2Properties({
    this.scope,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope == null ? null : scope!.toMap(),
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory MachineAssessmentV2Properties.fromMap(Map<String, dynamic> map) {
    return MachineAssessmentV2Properties(
      scope: map['scope'] == null ? null : Scope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : MachineAssessmentSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

