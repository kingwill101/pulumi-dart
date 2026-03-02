// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyzerConfigurationInternalAccessAnalysisRuleInclusion {
  /// List of AWS account IDs to apply to the internal access analysis rule criteria. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.
  final pulumi.Input<List<String>>? accountIds;
  /// List of resource ARNs to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources that match these ARNs.
  final pulumi.Input<List<String>>? resourceArns;
  /// List of resource types to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources of these types. Refer to [InternalAccessAnalysisRuleCriteria](https://docs.aws.amazon.com/access-analyzer/latest/APIReference/API_InternalAccessAnalysisRuleCriteria.html) in the AWS IAM Access Analyzer API Reference for valid values.
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [AnalyzerConfigurationInternalAccessAnalysisRuleInclusion].
  /// [accountIds] List of AWS account IDs to apply to the internal access analysis rule criteria. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.
  /// [resourceArns] List of resource ARNs to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources that match these ARNs.
  /// [resourceTypes] List of resource types to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources of these types. Refer to [InternalAccessAnalysisRuleCriteria](https://docs.aws.amazon.com/access-analyzer/latest/APIReference/API_InternalAccessAnalysisRuleCriteria.html) in the AWS IAM Access Analyzer API Reference for valid values.
  AnalyzerConfigurationInternalAccessAnalysisRuleInclusion({
    this.accountIds,
    this.resourceArns,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': ?accountIds,
      'resourceArns': ?resourceArns,
      'resourceTypes': ?resourceTypes,
    };
  }

  factory AnalyzerConfigurationInternalAccessAnalysisRuleInclusion.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationInternalAccessAnalysisRuleInclusion(
      accountIds: map['accountIds'] == null ? null : ((map['accountIds'] as List).cast<String>()).input(),
      resourceArns: map['resourceArns'] == null ? null : ((map['resourceArns'] as List).cast<String>()).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes'] as List).cast<String>()).input(),
    );
  }
}

