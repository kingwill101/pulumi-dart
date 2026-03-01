// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_models_get_models_args_doc}
/// Arguments for getModels.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_models_get_models_args_doc}
class GetModelsArgs {
  /// The ID of the api group.
  final pulumi.Input<String> groupId;
  /// A list of Model IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the Model.
  final pulumi.Input<String>? modelName;
  /// A regex string to filter results by Model name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetModelsArgs].
  /// [groupId] The ID of the api group.
  /// [ids] A list of Model IDs.
  /// [modelName] The name of the Model.
  /// [nameRegex] A regex string to filter results by Model name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetModelsArgs({
    required String groupId,
    List<String>? ids,
    String? modelName,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      modelName = pulumi.Input.asOptionalInput<String>(modelName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'ids': ?ids,
      'modelName': ?modelName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetModelsArgs(
      groupId: map['groupId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      modelName: map['modelName'] == null ? null : map['modelName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

