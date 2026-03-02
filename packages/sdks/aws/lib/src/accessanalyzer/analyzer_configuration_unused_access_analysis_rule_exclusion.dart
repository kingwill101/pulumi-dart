// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion {
  /// List of AWS account IDs to apply to the analysis rule criteria. The accounts cannot include the organization analyzer owner account. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.
  final pulumi.Input<List<String>>? accountIds;
  /// List of key-value pairs for resource tags to exclude from the analysis.
  final pulumi.Input<List<Map<String, String>>>? resourceTags;

  /// Creates a new [AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion].
  /// [accountIds] List of AWS account IDs to apply to the analysis rule criteria. The accounts cannot include the organization analyzer owner account. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.
  /// [resourceTags] List of key-value pairs for resource tags to exclude from the analysis.
  AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion({
    this.accountIds,
    this.resourceTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': ?accountIds,
      'resourceTags': ?resourceTags,
    };
  }

  factory AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion(
      accountIds: map['accountIds'] == null ? null : ((map['accountIds'] as List).cast<String>()).input(),
      resourceTags: map['resourceTags'] == null ? null : ((map['resourceTags'] as List).cast<Map<String, String>>()).input(),
    );
  }
}

