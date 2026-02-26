// ignore_for_file: unused_element, unnecessary_cast

class ThingTypeProperties {
  /// The description of the thing type.
  final String? description;

  /// A list of searchable thing attribute names.
  final List<String>? searchableAttributes;

  ThingTypeProperties({
    this.description,
    this.searchableAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final searchableAttributesValue = searchableAttributes;
    if (searchableAttributesValue != null) {
      map['searchableAttributes'] = searchableAttributesValue;
    }
    return map;
  }

  factory ThingTypeProperties.fromMap(Map<String, dynamic> map) {
    return ThingTypeProperties(
      description:
          map['description'] == null ? null : map['description'] as String,
      searchableAttributes: map['searchableAttributes'] == null
          ? null
          : (map['searchableAttributes'] as List).cast<String>(),
    );
  }
}
