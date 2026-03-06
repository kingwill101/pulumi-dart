// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameters_parameter.dart';

/// Result data returned by getParameters.
class GetParametersResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Parameter names.
  final List<String> names;
  final String? outputFile;
  /// The name of the common parameter.
  final String? parameterName;
  /// A list of Oos Parameters. Each element contains the following attributes:
  final List<GetParametersParameter> parameters;
  /// The ID of the Resource Group.
  final String? resourceGroupId;
  final String? sortField;
  final String? sortOrder;
  /// The tags added to the common parameter.
  final Map<String, String>? tags;
  /// The data type of the common parameter.
  final String? type;

  /// Creates a new [GetParametersResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Parameter names.
  /// [outputFile] Optional.
  /// [parameterName] The name of the common parameter.
  /// [parameters] A list of Oos Parameters. Each element contains the following attributes:
  /// [resourceGroupId] The ID of the Resource Group.
  /// [sortField] Optional.
  /// [sortOrder] Optional.
  /// [tags] The tags added to the common parameter.
  /// [type] The data type of the common parameter.
  const GetParametersResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.parameterName,
    required this.parameters,
    this.resourceGroupId,
    this.sortField,
    this.sortOrder,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'parameterName': ?parameterName,
      'parameters': pulumi.Input.encodeList<GetParametersParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetParametersResult.fromMap(Map<String, dynamic> map) {
    return GetParametersResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterName: (() { final guardedValue = map['parameterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: pulumi.Input.decodeList<GetParametersParameter>(map['parameters']!, (value) => GetParametersParameter.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortField: (() { final guardedValue = map['sortField']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

