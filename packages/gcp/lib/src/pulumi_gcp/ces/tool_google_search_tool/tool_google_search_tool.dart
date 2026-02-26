// ignore_for_file: unused_element, unnecessary_cast

class ToolGoogleSearchTool {
  /// Content will be fetched directly from these URLs for context and grounding.
  /// More details: https://cloud.google.com/vertex-ai/generative-ai/docs/url-context.
  /// Example: "https://example.com/path.html". A maximum of 20 URLs are allowed.
  final List<String>? contextUrls;

  /// Description of the tool's purpose.
  final String? description;

  /// List of domains to be excluded from the search results.
  /// Example: "example.com".
  /// A maximum of 2000 domains can be excluded.
  final List<String>? excludeDomains;

  /// The name of the tool.
  final String name;

  /// Specifies domain names to guide the search.
  /// The model will be instructed to prioritize these domains
  /// when formulating queries for google search.
  /// This is a best-effort hint and these domains may or may
  /// not be exclusively reflected in the final search results.
  /// Example: "example.com", "another.site".
  /// A maximum of 20 domains can be specified.
  final List<String>? preferredDomains;

  ToolGoogleSearchTool({
    this.contextUrls,
    this.description,
    this.excludeDomains,
    required this.name,
    this.preferredDomains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextUrlsValue = contextUrls;
    if (contextUrlsValue != null) {
      map['contextUrls'] = contextUrlsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeDomainsValue = excludeDomains;
    if (excludeDomainsValue != null) {
      map['excludeDomains'] = excludeDomainsValue;
    }
    map['name'] = name;
    final preferredDomainsValue = preferredDomains;
    if (preferredDomainsValue != null) {
      map['preferredDomains'] = preferredDomainsValue;
    }
    return map;
  }

  factory ToolGoogleSearchTool.fromMap(Map<String, dynamic> map) {
    return ToolGoogleSearchTool(
      contextUrls: map['contextUrls'] == null
          ? null
          : (map['contextUrls'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      excludeDomains: map['excludeDomains'] == null
          ? null
          : (map['excludeDomains'] as List).cast<String>(),
      name: map['name'] as String,
      preferredDomains: map['preferredDomains'] == null
          ? null
          : (map['preferredDomains'] as List).cast<String>(),
    );
  }
}
