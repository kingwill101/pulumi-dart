/// Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
enum MetadataFilterFilterMatchCriteria {
  matchAll("MATCH_ALL"),
  matchAny("MATCH_ANY"),
  notSet("NOT_SET");

  const MetadataFilterFilterMatchCriteria(this.value);
  final String value;

  static MetadataFilterFilterMatchCriteria fromValue(String value) {
    for (final item in MetadataFilterFilterMatchCriteria.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetadataFilterFilterMatchCriteria value: $value');
  }
}
