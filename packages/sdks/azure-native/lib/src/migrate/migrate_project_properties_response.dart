// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_project_summary_response.dart';

/// Class for migrate project properties.
class MigrateProjectPropertiesResponse {
  /// Gets the last time the project summary was refreshed.
  final pulumi.Input<String> lastSummaryRefreshedTime;
  /// Provisioning state of the migrate project.
  final pulumi.Input<String>? provisioningState;
  /// Gets the refresh summary state.
  final pulumi.Input<String> refreshSummaryState;
  /// Gets or sets the list of tools registered with the migrate project.
  final pulumi.Input<List<String>>? registeredTools;
  /// Gets the summary of the migrate project.
  final pulumi.Input<Map<String, DatabaseProjectSummaryResponse>> summary;

  /// Creates a new [MigrateProjectPropertiesResponse].
  /// [lastSummaryRefreshedTime] Gets the last time the project summary was refreshed.
  /// [provisioningState] Provisioning state of the migrate project.
  /// [refreshSummaryState] Gets the refresh summary state.
  /// [registeredTools] Gets or sets the list of tools registered with the migrate project.
  /// [summary] Gets the summary of the migrate project.
  const MigrateProjectPropertiesResponse({
    required this.lastSummaryRefreshedTime,
    this.provisioningState,
    required this.refreshSummaryState,
    this.registeredTools,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSummaryRefreshedTime': lastSummaryRefreshedTime,
      'provisioningState': ?provisioningState,
      'refreshSummaryState': refreshSummaryState,
      'registeredTools': ?registeredTools,
      'summary': pulumi.Input.mapInputValue<Map<String, DatabaseProjectSummaryResponse>, Map<String, Map<String, dynamic>>>(summary, (value) => pulumi.Input.encodeMapValues<DatabaseProjectSummaryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MigrateProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateProjectPropertiesResponse(
      lastSummaryRefreshedTime: pulumi.Input.fromValue(map['lastSummaryRefreshedTime'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshSummaryState: pulumi.Input.fromValue(map['refreshSummaryState'] as String),
      registeredTools: (() { final guardedValue = map['registeredTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      summary: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DatabaseProjectSummaryResponse>(map['summary']!, (value) => DatabaseProjectSummaryResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
