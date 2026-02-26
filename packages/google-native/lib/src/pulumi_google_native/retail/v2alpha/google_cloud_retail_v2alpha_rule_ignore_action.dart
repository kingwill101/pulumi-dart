// ignore_for_file: unused_element, unnecessary_cast

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2alphaRuleIgnoreAction {
  /// Terms to ignore in the search query.
  final List<String>? ignoreTerms;

  GoogleCloudRetailV2alphaRuleIgnoreAction({
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

  factory GoogleCloudRetailV2alphaRuleIgnoreAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleIgnoreAction(
      ignoreTerms: map['ignoreTerms'] == null
          ? null
          : (map['ignoreTerms'] as List).cast<String>(),
    );
  }
}
