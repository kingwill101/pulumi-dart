// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_list_list_args_doc}
/// The set of arguments for List.
/// {@endtemplate}
/// {@macro pulumi_esa_list_list_args_doc}
class ListArgs {
  /// The description of the custom list.
  final pulumi.Input<String>? description;
  /// The items in the custom list, which are displayed as an array.
  final pulumi.Input<List<String>>? items;
  /// The type of the custom list.
  final pulumi.Input<String>? kind;
  /// The name of the custom list.
  final pulumi.Input<String>? name;

  /// Creates a new [ListArgs].
  /// [description] The description of the custom list.
  /// [items] The items in the custom list, which are displayed as an array.
  /// [kind] The type of the custom list.
  /// [name] The name of the custom list.
  ListArgs({
    String? description,
    List<String>? items,
    String? kind,
    String? name,
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

  factory ListArgs.fromMap(Map<String, dynamic> map) {
    return ListArgs(
      description: map['description'] == null ? null : map['description'] as String,
      items: map['items'] == null ? null : (map['items'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

