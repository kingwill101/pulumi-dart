// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Code asset version details.
class CodeVersion {
  /// Uri where code is located
  final pulumi.Input<String>? codeUri;

  /// The asset description text.
  final pulumi.Input<String>? description;

  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;

  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;

  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;

  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CodeVersion].
  /// [codeUri] Uri where code is located
  /// [description] The asset description text.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  CodeVersion({
    this.codeUri,
    this.description,
    this.isAnonymous,
    this.isArchived,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeUri': ?codeUri,
      'description': ?description,
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory CodeVersion.fromMap(Map<String, dynamic> map) {
    return CodeVersion(
      codeUri: (() {
        final guardedValue = map['codeUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isAnonymous: (() {
        final guardedValue = map['isAnonymous'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isArchived: (() {
        final guardedValue = map['isArchived'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
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
