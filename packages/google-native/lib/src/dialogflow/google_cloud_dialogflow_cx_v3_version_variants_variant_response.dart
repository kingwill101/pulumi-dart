// ignore_for_file: unused_element, unnecessary_cast

/// A single flow version with specified traffic allocation.
class GoogleCloudDialogflowCxV3VersionVariantsVariantResponse {
  /// Whether the variant is for the control group.
  final bool isControlGroup;

  /// Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.
  final double trafficAllocation;

  /// The name of the flow version. Format: `projects//locations//agents//flows//versions/`.
  final String version;

  /// Creates a new [GoogleCloudDialogflowCxV3VersionVariantsVariantResponse].
  /// [isControlGroup] Whether the variant is for the control group.
  /// [trafficAllocation] Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.
  /// [version] The name of the flow version. Format: `projects//locations//agents//flows//versions/`.
  GoogleCloudDialogflowCxV3VersionVariantsVariantResponse({
    required this.isControlGroup,
    required this.trafficAllocation,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isControlGroup'] = isControlGroup;
    map['trafficAllocation'] = trafficAllocation;
    map['version'] = version;
    return map;
  }

  factory GoogleCloudDialogflowCxV3VersionVariantsVariantResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VersionVariantsVariantResponse(
      isControlGroup: map['isControlGroup'] as bool,
      trafficAllocation: map['trafficAllocation'] as double,
      version: map['version'] as String,
    );
  }
}
