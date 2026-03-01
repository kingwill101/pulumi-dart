// ignore_for_file: unused_element, unnecessary_cast

class ControlSynonymsAction {
  /// The synonyms to apply to the search results.
  final List<String>? synonyms;

  /// Creates a new [ControlSynonymsAction].
  /// [synonyms] The synonyms to apply to the search results.
  ControlSynonymsAction({this.synonyms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'synonyms': ?synonyms};
  }

  factory ControlSynonymsAction.fromMap(Map<String, dynamic> map) {
    return ControlSynonymsAction(
      synonyms: map['synonyms'] == null
          ? null
          : (map['synonyms'] as List).cast<String>(),
    );
  }
}
