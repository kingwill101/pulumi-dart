// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_apis_get_apis_args_doc}
/// Arguments for getApis.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_apis_get_apis_args_doc}
class GetApisArgs {
  /// The ID of the API.
  final pulumi.Input<String>? apiId;
  /// The ID of the API group.
  final pulumi.Input<String>? groupId;
  /// A list of API IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by API name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetApisArgs].
  /// [apiId] The ID of the API.
  /// [groupId] The ID of the API group.
  /// [ids] A list of API IDs.
  /// [nameRegex] A regex string to filter results by API name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetApisArgs({
    String? apiId,
    String? groupId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'groupId': ?groupId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetApisArgs.fromMap(Map<String, dynamic> map) {
    return GetApisArgs(
      apiId: map['apiId'] == null ? null : map['apiId'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

