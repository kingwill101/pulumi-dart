/// The policy of the feature.
enum GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy {
  policyUnspecified("POLICY_UNSPECIFIED"),
  allowed("ALLOWED"),
  forbidden("FORBIDDEN"),
  restricted("RESTRICTED");

  const GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy(this.value);
  final String value;

  static GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy fromValue(String value) {
    for (final item in GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy value: $value');
  }
}

