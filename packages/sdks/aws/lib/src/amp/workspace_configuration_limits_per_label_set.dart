// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_configuration_limits_per_label_set_limits.dart';

class WorkspaceConfigurationLimitsPerLabelSet {
  /// Map of label key-value pairs that identify the metrics to which the limits apply. An empty map represents the default bucket for metrics that don't match any other label set.
  final pulumi.Input<Map<String, String>> labelSet;
  /// Configuration block for the limits to apply to the specified label set. Detailed below.
  final pulumi.Input<WorkspaceConfigurationLimitsPerLabelSetLimits> limits;

  /// Creates a new [WorkspaceConfigurationLimitsPerLabelSet].
  /// [labelSet] Map of label key-value pairs that identify the metrics to which the limits apply. An empty map represents the default bucket for metrics that don't match any other label set.
  /// [limits] Configuration block for the limits to apply to the specified label set. Detailed below.
  WorkspaceConfigurationLimitsPerLabelSet({
    required this.labelSet,
    required this.limits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSet': labelSet,
      'limits': pulumi.Input.mapInputValue<WorkspaceConfigurationLimitsPerLabelSetLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
    };
  }

  factory WorkspaceConfigurationLimitsPerLabelSet.fromMap(Map<String, dynamic> map) {
    return WorkspaceConfigurationLimitsPerLabelSet(
      labelSet: pulumi.Input.fromValue((map['labelSet'] as Map).cast<String, String>()),
      limits: pulumi.Input.fromValue(WorkspaceConfigurationLimitsPerLabelSetLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
    );
  }
}

