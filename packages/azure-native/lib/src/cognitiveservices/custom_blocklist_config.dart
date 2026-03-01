// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the source to which filter applies.
class CustomBlocklistConfig {
  /// If blocking would occur.
  final bool? blocking;
  /// Name of ContentFilter.
  final String? blocklistName;
  /// Content source to apply the Content Filters.
  final String? source;

  /// Creates a new [CustomBlocklistConfig].
  /// [blocking] If blocking would occur.
  /// [blocklistName] Name of ContentFilter.
  /// [source] Content source to apply the Content Filters.
  CustomBlocklistConfig({
    this.blocking,
    this.blocklistName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocking': ?blocking,
      'blocklistName': ?blocklistName,
      'source': ?source,
    };
  }

  factory CustomBlocklistConfig.fromMap(Map<String, dynamic> map) {
    return CustomBlocklistConfig(
      blocking: map['blocking'] == null ? null : map['blocking'] as bool,
      blocklistName: map['blocklistName'] == null ? null : map['blocklistName'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

