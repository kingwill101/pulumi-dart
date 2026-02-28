// ignore_for_file: unused_element, unnecessary_cast

import 'iam_policy_analysis_query_response.dart';

/// The query content.
class QueryContentResponse {
  /// An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  final IamPolicyAnalysisQueryResponse iamPolicyAnalysisQuery;

  /// Creates a new [QueryContentResponse].
  /// [iamPolicyAnalysisQuery] An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  QueryContentResponse({
    required this.iamPolicyAnalysisQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPolicyAnalysisQuery': iamPolicyAnalysisQuery.toMap(),
    };
  }

  factory QueryContentResponse.fromMap(Map<String, dynamic> map) {
    return QueryContentResponse(
      iamPolicyAnalysisQuery: IamPolicyAnalysisQueryResponse.fromMap((map['iamPolicyAnalysisQuery'] as Map).cast<String, dynamic>()),
    );
  }
}

