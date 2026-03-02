// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_configuration_limits_per_label_set.dart';
import 'workspace_configuration_timeouts.dart';

/// {@template pulumi_amp_workspace_configuration_workspace_configuration_args_doc}
/// The set of arguments for WorkspaceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_amp_workspace_configuration_workspace_configuration_args_doc}
class WorkspaceConfigurationArgs {
  /// Configuration block for setting limits on metrics with specific label sets. Detailed below.
  final pulumi.Input<List<WorkspaceConfigurationLimitsPerLabelSet>>? limitsPerLabelSets;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Number of days to retain metric data in the workspace.
  final pulumi.Input<int>? retentionPeriodInDays;
  final pulumi.Input<WorkspaceConfigurationTimeouts>? timeouts;
  /// ID of the workspace to configure.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceConfigurationArgs].
  /// [limitsPerLabelSets] Configuration block for setting limits on metrics with specific label sets. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriodInDays] Number of days to retain metric data in the workspace.
  /// [timeouts] Optional.
  /// [workspaceId] ID of the workspace to configure.
  WorkspaceConfigurationArgs({
    this.limitsPerLabelSets,
    this.region,
    this.retentionPeriodInDays,
    this.timeouts,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limitsPerLabelSets': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceConfigurationLimitsPerLabelSet>, List<Map<String, dynamic>>>(limitsPerLabelSets, (value) => pulumi.Input.encodeList<WorkspaceConfigurationLimitsPerLabelSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'retentionPeriodInDays': ?retentionPeriodInDays,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<WorkspaceConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceConfigurationArgs(
      limitsPerLabelSets: map['limitsPerLabelSets'] == null ? null : (pulumi.Input.decodeList<WorkspaceConfigurationLimitsPerLabelSet>(map['limitsPerLabelSets'], (value) => WorkspaceConfigurationLimitsPerLabelSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      retentionPeriodInDays: map['retentionPeriodInDays'] == null ? null : (map['retentionPeriodInDays'] as int).input(),
      timeouts: map['timeouts'] == null ? null : (WorkspaceConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

