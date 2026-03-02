// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConfigurationLimitsPerLabelSetLimits {
  /// Maximum number of active time series that can be ingested for metrics matching the label set.
  final pulumi.Input<int> maxSeries;

  /// Creates a new [WorkspaceConfigurationLimitsPerLabelSetLimits].
  /// [maxSeries] Maximum number of active time series that can be ingested for metrics matching the label set.
  WorkspaceConfigurationLimitsPerLabelSetLimits({
    required this.maxSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSeries': maxSeries,
    };
  }

  factory WorkspaceConfigurationLimitsPerLabelSetLimits.fromMap(Map<String, dynamic> map) {
    return WorkspaceConfigurationLimitsPerLabelSetLimits(
      maxSeries: (map['maxSeries'] as int).input(),
    );
  }
}

