// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_report_mode_type_enum_value.dart';
import 'batch_restrictions.dart';

/// Definition of ProjectBuildBatchConfig
class ProjectBuildBatchConfig {
  /// <p>Specifies how build status reports are sent to the source provider for the batch build. This property is only used when the source provider for your project is Bitbucket, GitHub, or GitHub Enterprise, and your project is configured to report build statuses to the source provider.</p> <dl> <dt>REPORT_AGGREGATED_BATCH</dt> <dd> <p>(Default) Aggregate all of the build statuses into a single status report.</p> </dd> <dt>REPORT_INDIVIDUAL_BUILDS</dt> <dd> <p>Send a separate status report for each individual build.</p> </dd> </dl>
  final pulumi.Input<BatchReportModeTypeEnumValue>? batchReportMode;
  /// <p>Specifies if the build artifacts for the batch build should be combined into a single artifact location.</p>
  final pulumi.Input<bool>? combineArtifacts;
  /// <p>A <code>BatchRestrictions</code> object that specifies the restrictions for the batch build.</p>
  final pulumi.Input<BatchRestrictions>? restrictions;
  /// <p>Specifies the service role ARN for the batch build project.</p>
  final pulumi.Input<String>? serviceRole;
  /// <p>Specifies the maximum amount of time, in minutes, that the batch build must be completed in.</p>
  final pulumi.Input<int>? timeoutInMins;

  /// Creates a new [ProjectBuildBatchConfig].
  /// [batchReportMode] <p>Specifies how build status reports are sent to the source provider for the batch build. This property is only used when the source provider for your project is Bitbucket, GitHub, or GitHub Enterprise, and your project is configured to report build statuses to the source provider.</p> <dl> <dt>REPORT_AGGREGATED_BATCH</dt> <dd> <p>(Default) Aggregate all of the build statuses into a single status report.</p> </dd> <dt>REPORT_INDIVIDUAL_BUILDS</dt> <dd> <p>Send a separate status report for each individual build.</p> </dd> </dl>
  /// [combineArtifacts] <p>Specifies if the build artifacts for the batch build should be combined into a single artifact location.</p>
  /// [restrictions] <p>A <code>BatchRestrictions</code> object that specifies the restrictions for the batch build.</p>
  /// [serviceRole] <p>Specifies the service role ARN for the batch build project.</p>
  /// [timeoutInMins] <p>Specifies the maximum amount of time, in minutes, that the batch build must be completed in.</p>
  ProjectBuildBatchConfig({
    this.batchReportMode,
    this.combineArtifacts,
    this.restrictions,
    this.serviceRole,
    this.timeoutInMins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchReportMode': ?pulumi.Input.mapOptionalInputValue<BatchReportModeTypeEnumValue, Map<String, dynamic>>(batchReportMode, (value) => value.toMap()),
      'combineArtifacts': ?combineArtifacts,
      'restrictions': ?pulumi.Input.mapOptionalInputValue<BatchRestrictions, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
      'serviceRole': ?serviceRole,
      'timeoutInMins': ?timeoutInMins,
    };
  }

  factory ProjectBuildBatchConfig.fromMap(Map<String, dynamic> map) {
    return ProjectBuildBatchConfig(
      batchReportMode: map['batchReportMode'] == null ? null : (BatchReportModeTypeEnumValue.fromMap((map['batchReportMode']! as Map).cast<String, dynamic>())).input(),
      combineArtifacts: map['combineArtifacts'] == null ? null : (map['combineArtifacts']! as bool).input(),
      restrictions: map['restrictions'] == null ? null : (BatchRestrictions.fromMap((map['restrictions']! as Map).cast<String, dynamic>())).input(),
      serviceRole: map['serviceRole'] == null ? null : (map['serviceRole']! as String).input(),
      timeoutInMins: map['timeoutInMins'] == null ? null : (map['timeoutInMins']! as int).input(),
    );
  }
}

