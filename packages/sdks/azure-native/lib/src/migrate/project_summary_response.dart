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
  ProjectSummaryResponse({
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
      extendedSummary: map['extendedSummary'] == null ? null : ((map['extendedSummary']! as Map).cast<String, String>()).input(),
      instanceType: (map['instanceType'] as String).input(),
      lastSummaryRefreshedTime: map['lastSummaryRefreshedTime'] == null ? null : (map['lastSummaryRefreshedTime']! as String).input(),
      refreshSummaryState: map['refreshSummaryState'] == null ? null : (map['refreshSummaryState']! as String).input(),
    );
  }
}

