// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelContainerResponse {
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The latest version inside this container.
  final pulumi.Input<String> latestVersion;
  /// The next auto incremental version
  final pulumi.Input<String> nextVersion;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the model container.
  final pulumi.Input<String> provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ModelContainerResponse].
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [latestVersion] The latest version inside this container.
  /// [nextVersion] The next auto incremental version
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the model container.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ModelContainerResponse({
    this.description,
    this.isArchived,
    required this.latestVersion,
    required this.nextVersion,
    this.properties,
    required this.provisioningState,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isArchived': ?isArchived,
      'latestVersion': latestVersion,
      'nextVersion': nextVersion,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'tags': ?tags,
    };
  }

  factory ModelContainerResponse.fromMap(Map<String, dynamic> map) {
    return ModelContainerResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived'] as bool).input(),
      latestVersion: (map['latestVersion'] as String).input(),
      nextVersion: (map['nextVersion'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

