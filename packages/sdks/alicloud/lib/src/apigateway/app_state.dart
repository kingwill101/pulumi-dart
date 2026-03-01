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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

