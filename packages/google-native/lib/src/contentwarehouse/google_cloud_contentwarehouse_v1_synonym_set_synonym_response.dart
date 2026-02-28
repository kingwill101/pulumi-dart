// ignore_for_file: unused_element, unnecessary_cast

/// Represents a list of words given by the customer All these words are synonyms of each other.
class GoogleCloudContentwarehouseV1SynonymSetSynonymResponse {
  /// For example: sale, invoice, bill, order
  final List<String> words;

  /// Creates a new [GoogleCloudContentwarehouseV1SynonymSetSynonymResponse].
  /// [words] For example: sale, invoice, bill, order
  GoogleCloudContentwarehouseV1SynonymSetSynonymResponse({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['words'] = words;
    return map;
  }

  factory GoogleCloudContentwarehouseV1SynonymSetSynonymResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1SynonymSetSynonymResponse(
      words: (map['words'] as List).cast<String>(),
    );
  }
}
