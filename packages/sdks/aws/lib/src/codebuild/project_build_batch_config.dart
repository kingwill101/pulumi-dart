// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_build_batch_config_restrictions.dart';

class ProjectBuildBatchConfig {
  /// Specifies if the build artifacts for the batch build should be combined into a single
  /// artifact location.
  final pulumi.Input<bool>? combineArtifacts;
  /// Configuration block specifying the restrictions for the batch build. Detailed below.
  final pulumi.Input<ProjectBuildBatchConfigRestrictions>? restrictions;
  /// Specifies the service role ARN for the batch build project.
  final pulumi.Input<String> serviceRole;
  /// Specifies the maximum amount of time, in minutes, that the batch build must be
  /// completed in.
  final pulumi.Input<int>? timeoutInMins;

  /// Creates a new [ProjectBuildBatchConfig].
  /// [combineArtifacts] Specifies if the build artifacts for the batch build should be combined into a single
  /// [restrictions] Configuration block specifying the restrictions for the batch build. Detailed below.
  /// [serviceRole] Specifies the service role ARN for the batch build project.
  /// [timeoutInMins] Specifies the maximum amount of time, in minutes, that the batch build must be
  ProjectBuildBatchConfig({
    this.combineArtifacts,
    this.restrictions,
    required this.serviceRole,
    this.timeoutInMins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combineArtifacts': ?combineArtifacts,
      'restrictions': ?pulumi.Input.mapOptionalInputValue<ProjectBuildBatchConfigRestrictions, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
      'serviceRole': serviceRole,
      'timeoutInMins': ?timeoutInMins,
    };
  }

  factory ProjectBuildBatchConfig.fromMap(Map<String, dynamic> map) {
    return ProjectBuildBatchConfig(
      combineArtifacts: map['combineArtifacts'] == null ? null : ((map['combineArtifacts'] as bool).input()).input(),
      restrictions: map['restrictions'] == null ? null : ((ProjectBuildBatchConfigRestrictions.fromMap((map['restrictions']! as Map).cast<String, dynamic>())).input()).input(),
      serviceRole: (map['serviceRole'] as String).input(),
      timeoutInMins: map['timeoutInMins'] == null ? null : ((map['timeoutInMins'] as int).input()).input(),
    );
  }
}

