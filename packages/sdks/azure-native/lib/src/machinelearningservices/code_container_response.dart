// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container for code asset versions.
class CodeContainerResponse {
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

  /// Provisioning state for the code container.
  final pulumi.Input<String> provisioningState;

  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CodeContainerResponse].
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [latestVersion] The latest version inside this container.
  /// [nextVersion] The next auto incremental version
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the code container.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  CodeContainerResponse({
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

  factory CodeContainerResponse.fromMap(Map<String, dynamic> map) {
    return CodeContainerResponse(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isArchived: (() {
        final guardedValue = map['isArchived'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      latestVersion: pulumi.Input.fromValue(map['latestVersion'] as String),
      nextVersion: pulumi.Input.fromValue(map['nextVersion'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
