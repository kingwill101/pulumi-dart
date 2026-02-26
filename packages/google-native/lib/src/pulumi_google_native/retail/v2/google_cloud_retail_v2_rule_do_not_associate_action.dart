// ignore_for_file: unused_element, unnecessary_cast

/// Prevents `query_term` from being associated with specified terms during search. Example: Don't associate "gShoe" and "cheap".
class GoogleCloudRetailV2RuleDoNotAssociateAction {
  /// Cannot contain duplicates or the query term. Can specify up to 100 terms.
  final List<String>? doNotAssociateTerms;

  /// Terms from the search query. Will not consider do_not_associate_terms for search if in search query. Can specify up to 100 terms.
  final List<String>? queryTerms;

  /// Will be [deprecated = true] post migration;
  final List<String>? terms;

  GoogleCloudRetailV2RuleDoNotAssociateAction({
    this.doNotAssociateTerms,
    this.queryTerms,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final doNotAssociateTermsValue = doNotAssociateTerms;
    if (doNotAssociateTermsValue != null) {
      map['doNotAssociateTerms'] = doNotAssociateTermsValue;
    }
    final queryTermsValue = queryTerms;
    if (queryTermsValue != null) {
      map['queryTerms'] = queryTermsValue;
    }
    final termsValue = terms;
    if (termsValue != null) {
      map['terms'] = termsValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2RuleDoNotAssociateAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleDoNotAssociateAction(
      doNotAssociateTerms: map['doNotAssociateTerms'] == null
          ? null
          : (map['doNotAssociateTerms'] as List).cast<String>(),
      queryTerms: map['queryTerms'] == null
          ? null
          : (map['queryTerms'] as List).cast<String>(),
      terms:
          map['terms'] == null ? null : (map['terms'] as List).cast<String>(),
    );
  }
}
