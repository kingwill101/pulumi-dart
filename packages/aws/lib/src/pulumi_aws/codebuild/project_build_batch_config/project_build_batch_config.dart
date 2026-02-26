// ignore_for_file: unused_element, unnecessary_cast

import '../project_build_batch_config_restrictions/project_build_batch_config_restrictions.dart';

class ProjectBuildBatchConfig {
  /// Specifies if the build artifacts for the batch build should be combined into a single
  /// artifact location.
  final bool? combineArtifacts;

  /// Configuration block specifying the restrictions for the batch build. Detailed below.
  final ProjectBuildBatchConfigRestrictions? restrictions;

  /// Specifies the service role ARN for the batch build project.
  final String serviceRole;

  /// Specifies the maximum amount of time, in minutes, that the batch build must be
  /// completed in.
  final int? timeoutInMins;

  ProjectBuildBatchConfig({
    this.combineArtifacts,
    this.restrictions,
    required this.serviceRole,
    this.timeoutInMins,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final combineArtifactsValue = combineArtifacts;
    if (combineArtifactsValue != null) {
      map['combineArtifacts'] = combineArtifactsValue;
    }
    final restrictionsValue = restrictions;
    if (restrictionsValue != null) {
      map['restrictions'] = restrictionsValue.toMap();
    }
    map['serviceRole'] = serviceRole;
    final timeoutInMinsValue = timeoutInMins;
    if (timeoutInMinsValue != null) {
      map['timeoutInMins'] = timeoutInMinsValue;
    }
    return map;
  }

  factory ProjectBuildBatchConfig.fromMap(Map<String, dynamic> map) {
    return ProjectBuildBatchConfig(
      combineArtifacts: map['combineArtifacts'] == null
          ? null
          : map['combineArtifacts'] as bool,
      restrictions: map['restrictions'] == null
          ? null
          : ProjectBuildBatchConfigRestrictions.fromMap(
              (map['restrictions'] as Map).cast<String, dynamic>()),
      serviceRole: map['serviceRole'] as String,
      timeoutInMins:
          map['timeoutInMins'] == null ? null : map['timeoutInMins'] as int,
    );
  }
}
