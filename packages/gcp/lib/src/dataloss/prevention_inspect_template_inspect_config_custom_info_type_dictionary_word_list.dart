// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one
  /// phrase and every phrase must contain at least 2 characters that are letters or digits.
  final List<String> words;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one
  PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['words'] = words;
    return map;
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList(
      words: (map['words'] as List).cast<String>(),
    );
  }
}
