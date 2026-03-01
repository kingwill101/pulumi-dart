// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering List resources.
class ListState {
  /// The description of the custom list.
  final pulumi.Input<String>? description;
  /// The items in the custom list, which are displayed as an array.
  final pulumi.Input<List<String>>? items;
  /// The type of the custom list.
  final pulumi.Input<String>? kind;
  /// The name of the custom list.
  final pulumi.Input<String>? name;

  /// Creates a new [ListState].
  /// [description] The description of the custom list.
  /// [items] The items in the custom list, which are displayed as an array.
  /// [kind] The type of the custom list.
  /// [name] The name of the custom list.
  ListState({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? items,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      items = pulumi.Input.asOptionalInput<List<String>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'items': ?items,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory ListState.fromMap(Map<String, dynamic> map) {
    return ListState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      items: map['items'] == null ? null : pulumi.Output.create<List<String>>((map['items'] as List).cast<String>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

