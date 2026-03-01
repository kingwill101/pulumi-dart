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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expression,
    pulumi.Output<String>? savedQueryName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      expression = pulumi.Input.asOptionalInput<String>(expression),
      savedQueryName = pulumi.Input.asOptionalInput<String>(savedQueryName);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expression: map['expression'] == null ? null : pulumi.Output.create<String>(map['expression'] as String),
      savedQueryName: map['savedQueryName'] == null ? null : pulumi.Output.create<String>(map['savedQueryName'] as String),
    );
  }
}

