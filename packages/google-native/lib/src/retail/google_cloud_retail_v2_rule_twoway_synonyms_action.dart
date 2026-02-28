// ignore_for_file: unused_element, unnecessary_cast

/// Creates a set of terms that will be treated as synonyms of each other. Example: synonyms of "sneakers" and "shoes": * "sneakers" will use a synonym of "shoes". * "shoes" will use a synonym of "sneakers".
class GoogleCloudRetailV2RuleTwowaySynonymsAction {
  /// Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms.
  final List<String>? synonyms;

  /// Creates a new [GoogleCloudRetailV2RuleTwowaySynonymsAction].
  /// [synonyms] Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms.
  GoogleCloudRetailV2RuleTwowaySynonymsAction({
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final synonymsValue = synonyms;
    if (synonymsValue != null) {
      map['synonyms'] = synonymsValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2RuleTwowaySynonymsAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleTwowaySynonymsAction(
      synonyms: map['synonyms'] == null
          ? null
          : (map['synonyms'] as List).cast<String>(),
    );
  }
}
