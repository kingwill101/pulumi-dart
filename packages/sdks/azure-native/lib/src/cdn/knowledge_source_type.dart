import 'package:pulumi/pulumi.dart' as pulumi;

/// Format or origin of the knowledge source.
enum KnowledgeSourceType implements pulumi.PulumiEnum<String> {
  schemaOrgMarkup("SchemaOrgMarkup"),
  rssFeeds("RssFeeds"),
  sitemap("Sitemap");

  const KnowledgeSourceType(this.wireValue);
  @override
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
