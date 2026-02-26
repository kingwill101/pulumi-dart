// ignore_for_file: unused_element, unnecessary_cast

class ControlSynonymsAction {
  /// The synonyms to apply to the search results.
  final List<String>? synonyms;

  ControlSynonymsAction({
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

  factory ControlSynonymsAction.fromMap(Map<String, dynamic> map) {
    return ControlSynonymsAction(
      synonyms: map['synonyms'] == null
          ? null
          : (map['synonyms'] as List).cast<String>(),
    );
  }
}
