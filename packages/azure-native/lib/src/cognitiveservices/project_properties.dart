// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Cognitive Services Project'.
class ProjectProperties {
  /// The description of the Cognitive Services Project.
  final String? description;
  /// The display name of the Cognitive Services Project.
  final String? displayName;

  /// Creates a new [ProjectProperties].
  /// [description] The description of the Cognitive Services Project.
  /// [displayName] The display name of the Cognitive Services Project.
  ProjectProperties({
    this.description,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
    };
  }

  factory ProjectProperties.fromMap(Map<String, dynamic> map) {
    return ProjectProperties(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}

