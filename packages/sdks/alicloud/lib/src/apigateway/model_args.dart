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
    pulumi.Output<String>? description,
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> modelName,
    required pulumi.Output<String> schema,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      groupId = pulumi.Input.asInput<String>(groupId),
      modelName = pulumi.Input.asInput<String>(modelName),
      schema = pulumi.Input.asInput<String>(schema);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      modelName: pulumi.Output.create<String>(map['modelName'] as String),
      schema: pulumi.Output.create<String>(map['schema'] as String),
    );
  }
}

