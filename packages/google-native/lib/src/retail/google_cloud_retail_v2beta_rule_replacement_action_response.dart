// ignore_for_file: unused_element, unnecessary_cast


/// Replaces a term in the query. Multiple replacement candidates can be specified. All `query_terms` will be replaced with the replacement term. Example: Replace "gShoe" with "google shoe".
class GoogleCloudRetailV2betaRuleReplacementActionResponse {
  /// Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  final List<String> queryTerms;
  /// Term that will be used for replacement.
  final String replacementTerm;
  /// Will be [deprecated = true] post migration;
  final String term;

  /// Creates a new [GoogleCloudRetailV2betaRuleReplacementActionResponse].
  /// [queryTerms] Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  /// [replacementTerm] Term that will be used for replacement.
  /// [term] Will be [deprecated = true] post migration;
  GoogleCloudRetailV2betaRuleReplacementActionResponse({
    required this.queryTerms,
    required this.replacementTerm,
    required this.term,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryTerms': queryTerms,
      'replacementTerm': replacementTerm,
      'term': term,
    };
  }

  factory GoogleCloudRetailV2betaRuleReplacementActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleReplacementActionResponse(
      queryTerms: (map['queryTerms'] as List).cast<String>(),
      replacementTerm: map['replacementTerm'] as String,
      term: map['term'] as String,
    );
  }
}

