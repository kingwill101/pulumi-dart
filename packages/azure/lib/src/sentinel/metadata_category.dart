// ignore_for_file: unused_element, unnecessary_cast


class MetadataCategory {
  /// Specifies a list of domains for the solution content item.
  final List<String>? domains;
  /// Specifies a list of industry verticals for the solution content item.
  final List<String>? verticals;

  /// Creates a new [MetadataCategory].
  /// [domains] Specifies a list of domains for the solution content item.
  /// [verticals] Specifies a list of industry verticals for the solution content item.
  MetadataCategory({
    this.domains,
    this.verticals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'verticals': ?verticals,
    };
  }

  factory MetadataCategory.fromMap(Map<String, dynamic> map) {
    return MetadataCategory(
      domains: map['domains'] == null ? null : (map['domains'] as List).cast<String>(),
      verticals: map['verticals'] == null ? null : (map['verticals'] as List).cast<String>(),
    );
  }
}

