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
  final pulumi.Input<List<WorkspaceConfigurationLimitsPerLabelSet>>?
      limitsPerLabelSets;

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
    List<WorkspaceConfigurationLimitsPerLabelSet>? limitsPerLabelSets,
    String? region,
    int? retentionPeriodInDays,
    WorkspaceConfigurationTimeouts? timeouts,
    required String workspaceId,
  })  : limitsPerLabelSets = pulumi.Input.asOptionalInput<
            List<WorkspaceConfigurationLimitsPerLabelSet>>(limitsPerLabelSets),
        region = pulumi.Input.asOptionalInput<String>(region),
        retentionPeriodInDays =
            pulumi.Input.asOptionalInput<int>(retentionPeriodInDays),
        timeouts = pulumi.Input.asOptionalInput<WorkspaceConfigurationTimeouts>(
            timeouts),
        workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final limitsPerLabelSetsValue = limitsPerLabelSets;
    if (limitsPerLabelSetsValue != null) {
      map['limitsPerLabelSets'] = pulumi.Input.mapOptionalInputValue<
              List<WorkspaceConfigurationLimitsPerLabelSet>,
              List<Map<String, dynamic>>>(
          limitsPerLabelSetsValue,
          (value) => pulumi.Input.encodeList<
              WorkspaceConfigurationLimitsPerLabelSet,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPeriodInDaysValue = retentionPeriodInDays;
    if (retentionPeriodInDaysValue != null) {
      map['retentionPeriodInDays'] = retentionPeriodInDaysValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          WorkspaceConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory WorkspaceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceConfigurationArgs(
      limitsPerLabelSets: map['limitsPerLabelSets'] == null
          ? null
          : pulumi.Input.decodeList<WorkspaceConfigurationLimitsPerLabelSet>(
              map['limitsPerLabelSets'],
              (value) => WorkspaceConfigurationLimitsPerLabelSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      retentionPeriodInDays: map['retentionPeriodInDays'] == null
          ? null
          : map['retentionPeriodInDays'] as int,
      timeouts: map['timeouts'] == null
          ? null
          : WorkspaceConfigurationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      workspaceId: map['workspaceId'] as String,
    );
  }
}
