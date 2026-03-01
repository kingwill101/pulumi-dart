// ignore_for_file: unused_element, unnecessary_cast


/// ies for the solution content item
class MetadataCategoriesResponse {
  /// domain for the solution content item
  final List<String>? domains;
  /// Industry verticals for the solution content item
  final List<String>? verticals;

  /// Creates a new [MetadataCategoriesResponse].
  /// [domains] domain for the solution content item
  /// [verticals] Industry verticals for the solution content item
  MetadataCategoriesResponse({
    this.domains,
    this.verticals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'verticals': ?verticals,
    };
  }

  factory MetadataCategoriesResponse.fromMap(Map<String, dynamic> map) {
    return MetadataCategoriesResponse(
      domains: map['domains'] == null ? null : (map['domains'] as List).cast<String>(),
      verticals: map['verticals'] == null ? null : (map['verticals'] as List).cast<String>(),
    );
  }
}

