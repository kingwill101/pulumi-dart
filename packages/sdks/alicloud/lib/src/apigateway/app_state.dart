// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering App resources.
class AppState {
  /// The description of the app. Defaults to null.
  final pulumi.Input<String>? description;
  /// The name of the app.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppState].
  /// [description] The description of the app. Defaults to null.
  /// [name] The name of the app.
  /// [tags] A mapping of tags to assign to the resource.
  AppState({
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

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

