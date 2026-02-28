// ignore_for_file: unused_element, unnecessary_cast

import 'iam_policy_analysis_query.dart';

/// The query content.
class QueryContent {
  /// An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  final IamPolicyAnalysisQuery? iamPolicyAnalysisQuery;

  /// Creates a new [QueryContent].
  /// [iamPolicyAnalysisQuery] An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  QueryContent({
    this.iamPolicyAnalysisQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iamPolicyAnalysisQueryValue = iamPolicyAnalysisQuery;
    if (iamPolicyAnalysisQueryValue != null) {
      map['iamPolicyAnalysisQuery'] = iamPolicyAnalysisQueryValue.toMap();
    }
    return map;
  }

  factory QueryContent.fromMap(Map<String, dynamic> map) {
    return QueryContent(
      iamPolicyAnalysisQuery: map['iamPolicyAnalysisQuery'] == null
          ? null
          : IamPolicyAnalysisQuery.fromMap(
              (map['iamPolicyAnalysisQuery'] as Map).cast<String, dynamic>()),
    );
  }
}
