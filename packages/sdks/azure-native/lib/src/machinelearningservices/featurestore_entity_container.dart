// ignore_for_file: unused_element, unnecessary_cast


/// DTO object representing feature entity
class FeaturestoreEntityContainer {
  /// The asset description text.
  final String? description;
  /// Is the asset archived?
  final bool? isArchived;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [FeaturestoreEntityContainer].
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturestoreEntityContainer({
    this.description,
    this.isArchived,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory FeaturestoreEntityContainer.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityContainer(
      description: map['description'] == null ? null : map['description'] as String,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

