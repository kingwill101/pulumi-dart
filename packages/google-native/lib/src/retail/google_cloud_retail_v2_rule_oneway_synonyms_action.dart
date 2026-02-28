// ignore_for_file: unused_element, unnecessary_cast


/// Maps a set of terms to a set of synonyms. Set of synonyms will be treated as synonyms of each query term only. `query_terms` will not be treated as synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "shoes" will not use a synonym of "sneakers".
class GoogleCloudRetailV2RuleOnewaySynonymsAction {
  /// Will be [deprecated = true] post migration;
  final List<String>? onewayTerms;
  /// Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  final List<String>? queryTerms;
  /// Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  final List<String>? synonyms;

  /// Creates a new [GoogleCloudRetailV2RuleOnewaySynonymsAction].
  /// [onewayTerms] Will be [deprecated = true] post migration;
  /// [queryTerms] Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  /// [synonyms] Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  GoogleCloudRetailV2RuleOnewaySynonymsAction({
    this.onewayTerms,
    this.queryTerms,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onewayTerms': ?onewayTerms,
      'queryTerms': ?queryTerms,
      'synonyms': ?synonyms,
    };
  }

  factory GoogleCloudRetailV2RuleOnewaySynonymsAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleOnewaySynonymsAction(
      onewayTerms: map['onewayTerms'] == null ? null : (map['onewayTerms'] as List).cast<String>(),
      queryTerms: map['queryTerms'] == null ? null : (map['queryTerms'] as List).cast<String>(),
      synonyms: map['synonyms'] == null ? null : (map['synonyms'] as List).cast<String>(),
    );
  }
}

