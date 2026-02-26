// ignore_for_file: unused_element, unnecessary_cast

class WorkspaceConfigurationLimitsPerLabelSetLimits {
  /// Maximum number of active time series that can be ingested for metrics matching the label set.
  final int maxSeries;

  WorkspaceConfigurationLimitsPerLabelSetLimits({
    required this.maxSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxSeries'] = maxSeries;
    return map;
  }

  factory WorkspaceConfigurationLimitsPerLabelSetLimits.fromMap(
      Map<String, dynamic> map) {
    return WorkspaceConfigurationLimitsPerLabelSetLimits(
      maxSeries: map['maxSeries'] as int,
    );
  }
}
