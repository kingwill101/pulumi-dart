// ignore_for_file: unused_element, unnecessary_cast


class DatasetCreateRequestRegistration {
  /// The description for the dataset.
  final String? description;
  /// The name of the dataset.
  final String? name;
  /// Tags associated with the dataset.
  final Map<String, String>? tags;

  /// Creates a new [DatasetCreateRequestRegistration].
  /// [description] The description for the dataset.
  /// [name] The name of the dataset.
  /// [tags] Tags associated with the dataset.
  DatasetCreateRequestRegistration({
    this.description,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory DatasetCreateRequestRegistration.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestRegistration(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

