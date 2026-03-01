// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_parameters_parameter.dart';

/// Result data returned by getSecretParameters.
class GetSecretParametersResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Secret Parameter names.
  final List<String> names;
  final String? outputFile;
  /// A list of Oos Secret Parameters. Each element contains the following attributes:
  final List<GetSecretParametersParameter> parameters;
  /// The ID of the Resource Group.
  final String? resourceGroupId;
  /// The name of the encryption parameter.
  final String? secretParameterName;
  final String? sortField;
  final String? sortOrder;
  /// The tags of the parameter.
  final Map<String, String>? tags;
  final bool? withDecryption;

  /// Creates a new [GetSecretParametersResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Secret Parameter names.
  /// [outputFile] Optional.
  /// [parameters] A list of Oos Secret Parameters. Each element contains the following attributes:
  /// [resourceGroupId] The ID of the Resource Group.
  /// [secretParameterName] The name of the encryption parameter.
  /// [sortField] Optional.
  /// [sortOrder] Optional.
  /// [tags] The tags of the parameter.
  /// [withDecryption] Optional.
  GetSecretParametersResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.parameters,
    this.resourceGroupId,
    this.secretParameterName,
    this.sortField,
    this.sortOrder,
    this.tags,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'parameters': pulumi.Input.encodeList<GetSecretParametersParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'secretParameterName': ?secretParameterName,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'withDecryption': ?withDecryption,
    };
  }

  factory GetSecretParametersResult.fromMap(Map<String, dynamic> map) {
    return GetSecretParametersResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      parameters: pulumi.Input.decodeList<GetSecretParametersParameter>(map['parameters'], (value) => GetSecretParametersParameter.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      secretParameterName: map['secretParameterName'] == null ? null : map['secretParameterName'] as String,
      sortField: map['sortField'] == null ? null : map['sortField'] as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      withDecryption: map['withDecryption'] == null ? null : map['withDecryption'] as bool,
    );
  }
}

