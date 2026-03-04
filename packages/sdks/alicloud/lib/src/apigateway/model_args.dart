// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_model_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_apigateway_model_model_args_doc}
class ModelArgs {
  /// The description of the model.
  final pulumi.Input<String>? description;

  /// The group of the model belongs to.
  final pulumi.Input<String> groupId;

  /// The name of the model.
  final pulumi.Input<String> modelName;

  /// The schema of the model.
  final pulumi.Input<String> schema;

  /// Creates a new [ModelArgs].
  /// [description] The description of the model.
  /// [groupId] The group of the model belongs to.
  /// [modelName] The name of the model.
  /// [schema] The schema of the model.
  ModelArgs({
    this.description,
    required this.groupId,
    required this.modelName,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'groupId': groupId,
      'modelName': modelName,
      'schema': schema,
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
