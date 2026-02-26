// ignore_for_file: unused_element, unnecessary_cast

class ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final List<String> resourceTypes;

  ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceTypes'] = resourceTypes;
    return map;
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector.fromMap(
      Map<String, dynamic> map) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector(
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
