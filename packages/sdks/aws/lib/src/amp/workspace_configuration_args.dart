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
      limitsPerLabelSets: (() { final guardedValue = map['limitsPerLabelSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkspaceConfigurationLimitsPerLabelSet>(guardedValue, (value) => WorkspaceConfigurationLimitsPerLabelSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriodInDays: (() { final guardedValue = map['retentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}

