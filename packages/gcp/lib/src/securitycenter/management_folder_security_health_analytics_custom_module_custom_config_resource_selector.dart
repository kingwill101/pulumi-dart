// ignore_for_file: unused_element, unnecessary_cast

class ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final List<String> resourceTypes;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceTypes'] = resourceTypes;
    return map;
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector.fromMap(
      Map<String, dynamic> map) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector(
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
