// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolGoogleSearchTool {
  /// The description of the app version.
  final String? description;

  /// (Output)
  /// List of domains to be excluded from the search results.
  /// Example: "example.com".
  /// A maximum of 2000 domains can be excluded.
  final List<String>? excludeDomains;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  AppVersionSnapshotToolGoogleSearchTool({
    this.description,
    this.excludeDomains,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeDomainsValue = excludeDomains;
    if (excludeDomainsValue != null) {
      map['excludeDomains'] = excludeDomainsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolGoogleSearchTool.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolGoogleSearchTool(
      description:
          map['description'] == null ? null : map['description'] as String,
      excludeDomains: map['excludeDomains'] == null
          ? null
          : (map['excludeDomains'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
