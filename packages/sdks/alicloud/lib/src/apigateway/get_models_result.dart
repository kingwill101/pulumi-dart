// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_models_model.dart';

/// Result data returned by getModels.
class GetModelsResult {
  /// The group of the model belongs to.
  final String groupId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// The name of the Model.
  final String? modelName;

  /// A list of Api Gateway Models. Each element contains the following attributes:
  final List<GetModelsModel> models;
  final String? nameRegex;

  /// A list of Model names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetModelsResult].
  /// [groupId] The group of the model belongs to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [modelName] The name of the Model.
  /// [models] A list of Api Gateway Models. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of Model names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetModelsResult({
    required this.groupId,
    required this.id,
    required this.ids,
    this.modelName,
    required this.models,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'id': id,
      'ids': ids,
      'modelName': ?modelName,
      'models': pulumi.Input.encodeList<GetModelsModel, Map<String, dynamic>>(
        models,
        (value) => value.toMap(),
      ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetModelsResult.fromMap(Map<String, dynamic> map) {
    return GetModelsResult(
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      modelName: (() {
        final guardedValue = map['modelName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      models: pulumi.Input.decodeList<GetModelsModel>(
        map['models']!,
        (value) =>
            GetModelsModel.fromMap((value as Map).cast<String, dynamic>()),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
    );
  }
}
