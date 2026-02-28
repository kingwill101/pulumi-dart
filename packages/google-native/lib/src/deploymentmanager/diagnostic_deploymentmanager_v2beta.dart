// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostic_level_deploymentmanager_v2beta.dart';

class DiagnosticDeploymentmanagerV2beta {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final String? field;

  /// Level to record this diagnostic.
  final DiagnosticLevelDeploymentmanagerV2beta? level;

  /// Creates a new [DiagnosticDeploymentmanagerV2beta].
  /// [field] JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  /// [level] Level to record this diagnostic.
  DiagnosticDeploymentmanagerV2beta({
    this.field,
    this.level,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    final levelValue = level;
    if (levelValue != null) {
      map['level'] = levelValue.value;
    }
    return map;
  }

  factory DiagnosticDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return DiagnosticDeploymentmanagerV2beta(
      field: map['field'] == null ? null : map['field'] as String,
      level: map['level'] == null
          ? null
          : DiagnosticLevelDeploymentmanagerV2beta.fromValue(
              map['level'] as String),
    );
  }
}
