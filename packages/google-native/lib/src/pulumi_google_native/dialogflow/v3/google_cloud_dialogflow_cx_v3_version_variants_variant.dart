// ignore_for_file: unused_element, unnecessary_cast

/// A single flow version with specified traffic allocation.
class GoogleCloudDialogflowCxV3VersionVariantsVariant {
  /// Whether the variant is for the control group.
  final bool? isControlGroup;

  /// Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.
  final double? trafficAllocation;

  /// The name of the flow version. Format: `projects//locations//agents//flows//versions/`.
  final String? version;

  GoogleCloudDialogflowCxV3VersionVariantsVariant({
    this.isControlGroup,
    this.trafficAllocation,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isControlGroupValue = isControlGroup;
    if (isControlGroupValue != null) {
      map['isControlGroup'] = isControlGroupValue;
    }
    final trafficAllocationValue = trafficAllocation;
    if (trafficAllocationValue != null) {
      map['trafficAllocation'] = trafficAllocationValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3VersionVariantsVariant.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VersionVariantsVariant(
      isControlGroup:
          map['isControlGroup'] == null ? null : map['isControlGroup'] as bool,
      trafficAllocation: map['trafficAllocation'] == null
          ? null
          : map['trafficAllocation'] as double,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
