// ignore_for_file: unused_element, unnecessary_cast

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2betaRuleIgnoreAction {
  /// Terms to ignore in the search query.
  final List<String>? ignoreTerms;

  /// Creates a new [GoogleCloudRetailV2betaRuleIgnoreAction].
  /// [ignoreTerms] Terms to ignore in the search query.
  GoogleCloudRetailV2betaRuleIgnoreAction({
    this.ignoreTerms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ignoreTermsValue = ignoreTerms;
    if (ignoreTermsValue != null) {
      map['ignoreTerms'] = ignoreTermsValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2betaRuleIgnoreAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleIgnoreAction(
      ignoreTerms: map['ignoreTerms'] == null
          ? null
          : (map['ignoreTerms'] as List).cast<String>(),
    );
  }
}
