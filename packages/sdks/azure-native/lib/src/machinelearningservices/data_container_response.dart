// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container for data asset versions.
class DataContainerResponse {
  /// [Required] Specifies the type of data.
  final pulumi.Input<String> dataType;

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

  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataContainerResponse].
  /// [dataType] [Required] Specifies the type of data.
  /// [description] The asset description text.
  /// [isArchived] Is the asset archived?
  /// [latestVersion] The latest version inside this container.
  /// [nextVersion] The next auto incremental version
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  DataContainerResponse({
    required this.dataType,
    this.description,
    this.isArchived,
    required this.latestVersion,
    required this.nextVersion,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'description': ?description,
      'isArchived': ?isArchived,
      'latestVersion': latestVersion,
      'nextVersion': nextVersion,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory DataContainerResponse.fromMap(Map<String, dynamic> map) {
    return DataContainerResponse(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
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
