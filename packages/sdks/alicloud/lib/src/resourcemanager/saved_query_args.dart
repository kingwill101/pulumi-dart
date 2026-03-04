// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_saved_query_saved_query_args_doc}
/// The set of arguments for SavedQuery.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_saved_query_saved_query_args_doc}
class SavedQueryArgs {
  /// Query Description.
  final pulumi.Input<String>? description;

  /// Query Expression.
  final pulumi.Input<String> expression;

  /// The name of the resource.
  final pulumi.Input<String> savedQueryName;

  /// Creates a new [SavedQueryArgs].
  /// [description] Query Description.
  /// [expression] Query Expression.
  /// [savedQueryName] The name of the resource.
  SavedQueryArgs({
    this.description,
    required this.expression,
    required this.savedQueryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'savedQueryName': savedQueryName,
    };
  }

  factory SavedQueryArgs.fromMap(Map<String, dynamic> map) {
    return SavedQueryArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      savedQueryName: pulumi.Input.fromValue(map['savedQueryName'] as String),
    );
  }
}
