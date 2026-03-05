/// Format or origin of the knowledge source.
enum KnowledgeSourceType {
  schemaOrgMarkup("SchemaOrgMarkup"),
  rssFeeds("RssFeeds"),
  sitemap("Sitemap");

  const KnowledgeSourceType(this.wireValue);
  final String wireValue;

  static KnowledgeSourceType fromValue(String value) {
    for (final item in KnowledgeSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnowledgeSourceType value: $value');
  }
}

