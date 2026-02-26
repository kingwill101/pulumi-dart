// ignore_for_file: unused_element, unnecessary_cast

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2RuleIgnoreActionResponse {
  /// Terms to ignore in the search query.
  final List<String> ignoreTerms;

  GoogleCloudRetailV2RuleIgnoreActionResponse({
    required this.ignoreTerms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ignoreTerms'] = ignoreTerms;
    return map;
  }

  factory GoogleCloudRetailV2RuleIgnoreActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleIgnoreActionResponse(
      ignoreTerms: (map['ignoreTerms'] as List).cast<String>(),
    );
  }
}
