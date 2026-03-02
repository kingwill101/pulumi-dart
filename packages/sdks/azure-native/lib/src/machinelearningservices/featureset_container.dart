// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DTO object representing feature set
class FeaturesetContainer {
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FeaturesetContainer].
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturesetContainer({
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

  factory FeaturesetContainer.fromMap(Map<String, dynamic> map) {
    return FeaturesetContainer(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

