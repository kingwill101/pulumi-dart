// ignore_for_file: unused_element, unnecessary_cast

/// Prevents `query_term` from being associated with specified terms during search. Example: Don't associate "gShoe" and "cheap".
class GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse {
  /// Cannot contain duplicates or the query term. Can specify up to 100 terms.
  final List<String> doNotAssociateTerms;

  /// Terms from the search query. Will not consider do_not_associate_terms for search if in search query. Can specify up to 100 terms.
  final List<String> queryTerms;

  /// Will be [deprecated = true] post migration;
  final List<String> terms;

  GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse({
    required this.doNotAssociateTerms,
    required this.queryTerms,
    required this.terms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['doNotAssociateTerms'] = doNotAssociateTerms;
    map['queryTerms'] = queryTerms;
    map['terms'] = terms;
    return map;
  }

  factory GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse(
      doNotAssociateTerms: (map['doNotAssociateTerms'] as List).cast<String>(),
      queryTerms: (map['queryTerms'] as List).cast<String>(),
      terms: (map['terms'] as List).cast<String>(),
    );
  }
}
