// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Project summary.
class ProjectSummaryResponse {
  /// Extended summary.
  final pulumi.Input<Map<String, String>>? extendedSummary;
  /// Instance type.
  final pulumi.Input<String> instanceType;
  /// Last summary refresh time.
  final pulumi.Input<String>? lastSummaryRefreshedTime;
  /// Refresh summary state.
  final pulumi.Input<String>? refreshSummaryState;

  /// Creates a new [ProjectSummaryResponse].
  /// [extendedSummary] Extended summary.
  /// [instanceType] Instance type.
  /// [lastSummaryRefreshedTime] Last summary refresh time.
  /// [refreshSummaryState] Refresh summary state.
  const ProjectSummaryResponse({
    this.extendedSummary,
    required this.instanceType,
    this.lastSummaryRefreshedTime,
    this.refreshSummaryState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedSummary': ?extendedSummary,
      'instanceType': instanceType,
      'lastSummaryRefreshedTime': ?lastSummaryRefreshedTime,
      'refreshSummaryState': ?refreshSummaryState,
    };
  }

  factory ProjectSummaryResponse.fromMap(Map<String, dynamic> map) {
    return ProjectSummaryResponse(
      extendedSummary: (() { final guardedValue = map['extendedSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lastSummaryRefreshedTime: (() { final guardedValue = map['lastSummaryRefreshedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshSummaryState: (() { final guardedValue = map['refreshSummaryState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

