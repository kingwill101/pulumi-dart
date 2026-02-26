// ignore_for_file: unused_element, unnecessary_cast

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector {
  /// The resource types to run the detector on.
  final List<String> resourceTypes;

  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceTypes'] = resourceTypes;
    return map;
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector(
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
