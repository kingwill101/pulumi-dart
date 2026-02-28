// ignore_for_file: unused_element, unnecessary_cast

class AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion {
  /// List of AWS account IDs to apply to the analysis rule criteria. The accounts cannot include the organization analyzer owner account. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.
  final List<String>? accountIds;

  /// List of key-value pairs for resource tags to exclude from the analysis.
  final List<Map<String, String>>? resourceTags;

  /// Creates a new [AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion].
  /// [accountIds] List of AWS account IDs to apply to the analysis rule criteria. The accounts cannot include the organization analyzer owner account. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.
  /// [resourceTags] List of key-value pairs for resource tags to exclude from the analysis.
  AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion({
    this.accountIds,
    this.resourceTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdsValue = accountIds;
    if (accountIdsValue != null) {
      map['accountIds'] = accountIdsValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    return map;
  }

  factory AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion.fromMap(
      Map<String, dynamic> map) {
    return AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion(
      accountIds: map['accountIds'] == null
          ? null
          : (map['accountIds'] as List).cast<String>(),
      resourceTags: map['resourceTags'] == null
          ? null
          : (map['resourceTags'] as List).cast<Map<String, String>>(),
    );
  }
}
