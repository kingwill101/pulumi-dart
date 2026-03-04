// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apis_api.dart';

/// Result data returned by getApis.
class GetApisResult {
  /// (Available since v1.224.0) The ID of the API.
  final String? apiId;

  /// A list of APIs. Each element contains the following attributes:
  final List<GetApisApi> apis;

  /// The ID of the API group.
  final String? groupId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;

  /// A list of API names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetApisResult].
  /// [apiId] (Available since v1.224.0) The ID of the API.
  /// [apis] A list of APIs. Each element contains the following attributes:
  /// [groupId] The ID of the API group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of API names.
  /// [outputFile] Optional.
  GetApisResult({
    this.apiId,
    required this.apis,
    this.groupId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'apis': pulumi.Input.encodeList<GetApisApi, Map<String, dynamic>>(
        apis,
        (value) => value.toMap(),
      ),
      'groupId': ?groupId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetApisResult.fromMap(Map<String, dynamic> map) {
    return GetApisResult(
      apiId: (() {
        final guardedValue = map['apiId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      apis: pulumi.Input.decodeList<GetApisApi>(
        map['apis']!,
        (value) => GetApisApi.fromMap((value as Map).cast<String, dynamic>()),
      ),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
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
    );
  }
}
