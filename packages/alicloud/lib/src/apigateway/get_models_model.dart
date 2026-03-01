// ignore_for_file: unused_element, unnecessary_cast


class GetModelsModel {
  /// The creation time of the model.
  final String createTime;
  /// The description of the model.
  final String description;
  /// The ID of the api group.
  final String groupId;
  /// The ID of the Api Gateway Model.
  final String id;
  /// The id of the model.
  final String modelId;
  /// The name of the Model.
  final String modelName;
  /// The reference of the model.
  final String modelRef;
  /// The modified time of the model.
  final String modifiedTime;
  /// The schema of the model.
  final String schema;

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
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      modelId: map['modelId'] as String,
      modelName: map['modelName'] as String,
      modelRef: map['modelRef'] as String,
      modifiedTime: map['modifiedTime'] as String,
      schema: map['schema'] as String,
    );
  }
}

