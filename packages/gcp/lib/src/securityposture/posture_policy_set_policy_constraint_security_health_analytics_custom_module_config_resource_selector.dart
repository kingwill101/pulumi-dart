// ignore_for_file: unused_element, unnecessary_cast

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector {
  /// The resource types to run the detector on.
  final List<String> resourceTypes;

  /// Creates a new [PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceTypes': resourceTypes};
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector(
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
