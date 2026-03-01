// ignore_for_file: unused_element, unnecessary_cast

class ThingTypeProperties {
  /// The description of the thing type.
  final String? description;

  /// A list of searchable thing attribute names.
  final List<String>? searchableAttributes;

  /// Creates a new [ThingTypeProperties].
  /// [description] The description of the thing type.
  /// [searchableAttributes] A list of searchable thing attribute names.
  ThingTypeProperties({this.description, this.searchableAttributes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'searchableAttributes': ?searchableAttributes,
    };
  }

  factory ThingTypeProperties.fromMap(Map<String, dynamic> map) {
    return ThingTypeProperties(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      searchableAttributes: map['searchableAttributes'] == null
          ? null
          : (map['searchableAttributes'] as List).cast<String>(),
    );
  }
}
