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
    this.description,
    this.items,
    this.kind,
    this.name,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      items: map['items'] == null ? null : ((map['items']! as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

