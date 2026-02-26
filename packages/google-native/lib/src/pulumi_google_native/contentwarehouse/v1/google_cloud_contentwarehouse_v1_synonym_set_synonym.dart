// ignore_for_file: unused_element, unnecessary_cast

/// Represents a list of words given by the customer All these words are synonyms of each other.
class GoogleCloudContentwarehouseV1SynonymSetSynonym {
  /// For example: sale, invoice, bill, order
  final List<String>? words;

  GoogleCloudContentwarehouseV1SynonymSetSynonym({
    this.words,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final wordsValue = words;
    if (wordsValue != null) {
      map['words'] = wordsValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1SynonymSetSynonym.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1SynonymSetSynonym(
      words:
          map['words'] == null ? null : (map['words'] as List).cast<String>(),
    );
  }
}
