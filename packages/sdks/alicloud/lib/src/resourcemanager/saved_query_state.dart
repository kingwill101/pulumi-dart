// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SavedQuery resources.
class SavedQueryState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;

  /// Query Description.
  final pulumi.Input<String>? description;

  /// Query Expression.
  final pulumi.Input<String>? expression;

  /// The name of the resource.
  final pulumi.Input<String>? savedQueryName;

  /// Creates a new [SavedQueryState].
  /// [createTime] The creation time of the resource.
  /// [description] Query Description.
  /// [expression] Query Expression.
  /// [savedQueryName] The name of the resource.
  SavedQueryState({
    this.createTime,
    this.description,
    this.expression,
    this.savedQueryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'expression': ?expression,
      'savedQueryName': ?savedQueryName,
    };
  }

  factory SavedQueryState.fromMap(Map<String, dynamic> map) {
    return SavedQueryState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      savedQueryName: (() {
        final guardedValue = map['savedQueryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
