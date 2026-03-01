// ignore_for_file: unused_element, unnecessary_cast


/// Definition of a component version: defines resources that span component types.
class ComponentVersion {
  /// Defines Component definition details.
  /// <see href="https://docs.microsoft.com/en-us/azure/machine-learning/reference-yaml-component-command" />
  final dynamic componentSpec;
  /// The asset description text.
  final String? description;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [ComponentVersion].
  /// [componentSpec] Defines Component definition details.
  /// [description] The asset description text.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ComponentVersion({
    this.componentSpec,
    this.description,
    this.isAnonymous,
    this.isArchived,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentSpec': ?componentSpec,
      'description': ?description,
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory ComponentVersion.fromMap(Map<String, dynamic> map) {
    return ComponentVersion(
      componentSpec: map['componentSpec'] == null ? null : map['componentSpec'],
      description: map['description'] == null ? null : map['description'] as String,
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

