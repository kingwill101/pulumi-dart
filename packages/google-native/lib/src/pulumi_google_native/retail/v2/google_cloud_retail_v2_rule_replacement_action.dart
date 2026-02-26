// ignore_for_file: unused_element, unnecessary_cast

/// Replaces a term in the query. Multiple replacement candidates can be specified. All `query_terms` will be replaced with the replacement term. Example: Replace "gShoe" with "google shoe".
class GoogleCloudRetailV2RuleReplacementAction {
  /// Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  final List<String>? queryTerms;

  /// Term that will be used for replacement.
  final String? replacementTerm;

  /// Will be [deprecated = true] post migration;
  final String? term;

  GoogleCloudRetailV2RuleReplacementAction({
    this.queryTerms,
    this.replacementTerm,
    this.term,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queryTermsValue = queryTerms;
    if (queryTermsValue != null) {
      map['queryTerms'] = queryTermsValue;
    }
    final replacementTermValue = replacementTerm;
    if (replacementTermValue != null) {
      map['replacementTerm'] = replacementTermValue;
    }
    final termValue = term;
    if (termValue != null) {
      map['term'] = termValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2RuleReplacementAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleReplacementAction(
      queryTerms: map['queryTerms'] == null
          ? null
          : (map['queryTerms'] as List).cast<String>(),
      replacementTerm: map['replacementTerm'] == null
          ? null
          : map['replacementTerm'] as String,
      term: map['term'] == null ? null : map['term'] as String,
    );
  }
}
