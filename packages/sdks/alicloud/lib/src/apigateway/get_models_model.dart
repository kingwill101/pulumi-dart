// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetModelsModel {
  /// The creation time of the model.
  final pulumi.Input<String> createTime;

  /// The description of the model.
  final pulumi.Input<String> description;

  /// The ID of the api group.
  final pulumi.Input<String> groupId;

  /// The ID of the Api Gateway Model.
  final pulumi.Input<String> id;

  /// The id of the model.
  final pulumi.Input<String> modelId;

  /// The name of the Model.
  final pulumi.Input<String> modelName;

  /// The reference of the model.
  final pulumi.Input<String> modelRef;

  /// The modified time of the model.
  final pulumi.Input<String> modifiedTime;

  /// The schema of the model.
  final pulumi.Input<String> schema;

  /// Creates a new [GetModelsModel].
  /// [createTime] The creation time of the model.
  /// [description] The description of the model.
  /// [groupId] The ID of the api group.
  /// [id] The ID of the Api Gateway Model.
  /// [modelId] The id of the model.
  /// [modelName] The name of the Model.
  /// [modelRef] The reference of the model.
  /// [modifiedTime] The modified time of the model.
  /// [schema] The schema of the model.
  GetModelsModel({
    required this.createTime,
    required this.description,
    required this.groupId,
    required this.id,
    required this.modelId,
    required this.modelName,
    required this.modelRef,
    required this.modifiedTime,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'groupId': groupId,
      'id': id,
      'modelId': modelId,
      'modelName': modelName,
      'modelRef': modelRef,
      'modifiedTime': modifiedTime,
      'schema': schema,
    };
  }

  factory GetModelsModel.fromMap(Map<String, dynamic> map) {
    return GetModelsModel(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      modelRef: pulumi.Input.fromValue(map['modelRef'] as String),
      modifiedTime: pulumi.Input.fromValue(map['modifiedTime'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
