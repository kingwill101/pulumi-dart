// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Model resources.
class ModelState {
  /// The description of the model.
  final pulumi.Input<String>? description;
  /// The group of the model belongs to.
  final pulumi.Input<String>? groupId;
  /// The name of the model.
  final pulumi.Input<String>? modelName;
  /// The schema of the model.
  final pulumi.Input<String>? schema;

  /// Creates a new [ModelState].
  /// [description] The description of the model.
  /// [groupId] The group of the model belongs to.
  /// [modelName] The name of the model.
  /// [schema] The schema of the model.
  ModelState({
    this.description,
    this.groupId,
    this.modelName,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'groupId': ?groupId,
      'modelName': ?modelName,
      'schema': ?schema,
    };
  }

  factory ModelState.fromMap(Map<String, dynamic> map) {
    return ModelState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      modelName: map['modelName'] == null ? null : (map['modelName']! as String).input(),
      schema: map['schema'] == null ? null : (map['schema']! as String).input(),
    );
  }
}

