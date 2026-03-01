// ignore_for_file: unused_element, unnecessary_cast

class GetResourcesTagFilter {
  /// One part of a key-value pair that makes up a tag.
  final String key;

  /// Optional part of a key-value pair that make up a tag.
  final List<String>? values;

  /// Creates a new [GetResourcesTagFilter].
  /// [key] One part of a key-value pair that makes up a tag.
  /// [values] Optional part of a key-value pair that make up a tag.
  GetResourcesTagFilter({required this.key, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': ?values};
  }

  factory GetResourcesTagFilter.fromMap(Map<String, dynamic> map) {
    return GetResourcesTagFilter(
      key: map['key'] as String,
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
