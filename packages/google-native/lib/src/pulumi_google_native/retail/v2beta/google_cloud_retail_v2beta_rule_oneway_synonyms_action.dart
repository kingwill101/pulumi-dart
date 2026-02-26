// ignore_for_file: unused_element, unnecessary_cast

/// Maps a set of terms to a set of synonyms. Set of synonyms will be treated as synonyms of each query term only. `query_terms` will not be treated as synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "shoes" will not use a synonym of "sneakers".
class GoogleCloudRetailV2betaRuleOnewaySynonymsAction {
  /// Will be [deprecated = true] post migration;
  final List<String>? onewayTerms;

  /// Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  final List<String>? queryTerms;

  /// Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  final List<String>? synonyms;

  GoogleCloudRetailV2betaRuleOnewaySynonymsAction({
    this.onewayTerms,
    this.queryTerms,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onewayTermsValue = onewayTerms;
    if (onewayTermsValue != null) {
      map['onewayTerms'] = onewayTermsValue;
    }
    final queryTermsValue = queryTerms;
    if (queryTermsValue != null) {
      map['queryTerms'] = queryTermsValue;
    }
    final synonymsValue = synonyms;
    if (synonymsValue != null) {
      map['synonyms'] = synonymsValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2betaRuleOnewaySynonymsAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleOnewaySynonymsAction(
      onewayTerms: map['onewayTerms'] == null
          ? null
          : (map['onewayTerms'] as List).cast<String>(),
      queryTerms: map['queryTerms'] == null
          ? null
          : (map['queryTerms'] as List).cast<String>(),
      synonyms: map['synonyms'] == null
          ? null
          : (map['synonyms'] as List).cast<String>(),
    );
  }
}
