// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Component container definition.
/// <see href="https://docs.microsoft.com/en-us/azure/machine-learning/reference-yaml-component-command" />
class ComponentContainer {
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ComponentContainer].
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ComponentContainer({
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

  factory ComponentContainer.fromMap(Map<String, dynamic> map) {
    return ComponentContainer(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

