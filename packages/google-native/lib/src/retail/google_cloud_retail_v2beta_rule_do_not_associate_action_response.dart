// ignore_for_file: unused_element, unnecessary_cast

/// Prevents `query_term` from being associated with specified terms during search. Example: Don't associate "gShoe" and "cheap".
class GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse {
  /// Cannot contain duplicates or the query term. Can specify up to 100 terms.
  final List<String> doNotAssociateTerms;

  /// Terms from the search query. Will not consider do_not_associate_terms for search if in search query. Can specify up to 100 terms.
  final List<String> queryTerms;

  /// Will be [deprecated = true] post migration;
  final List<String> terms;

  /// Creates a new [GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse].
  /// [doNotAssociateTerms] Cannot contain duplicates or the query term. Can specify up to 100 terms.
  /// [queryTerms] Terms from the search query. Will not consider do_not_associate_terms for search if in search query. Can specify up to 100 terms.
  /// [terms] Will be [deprecated = true] post migration;
  GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse({
    required this.doNotAssociateTerms,
    required this.queryTerms,
    required this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doNotAssociateTerms': doNotAssociateTerms,
      'queryTerms': queryTerms,
      'terms': terms,
    };
  }

  factory GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse(
      doNotAssociateTerms: (map['doNotAssociateTerms'] as List).cast<String>(),
      queryTerms: (map['queryTerms'] as List).cast<String>(),
      terms: (map['terms'] as List).cast<String>(),
    );
  }
}
