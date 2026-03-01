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
    pulumi.Output<String>? description,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? modelName,
    pulumi.Output<String>? schema,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      modelName = pulumi.Input.asOptionalInput<String>(modelName),
      schema = pulumi.Input.asOptionalInput<String>(schema);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      modelName: map['modelName'] == null ? null : pulumi.Output.create<String>(map['modelName'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
    );
  }
}

