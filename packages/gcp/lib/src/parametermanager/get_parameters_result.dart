// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameters_parameter.dart';

/// Result data returned by getParameters.
class GetParametersResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of parameters matching the filter. Structure is defined below.
  final List<GetParametersParameter> parameters;
  /// The ID of the project in which the resource belongs.
  final String project;

  /// Creates a new [GetParametersResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameters] A list of parameters matching the filter. Structure is defined below.
  /// [project] The ID of the project in which the resource belongs.
  GetParametersResult({
    this.filter,
    required this.id,
    required this.parameters,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'parameters': pulumi.Input.encodeList<GetParametersParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'project': project,
    };
  }

  factory GetParametersResult.fromMap(Map<String, dynamic> map) {
    return GetParametersResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      parameters: pulumi.Input.decodeList<GetParametersParameter>(map['parameters'], (value) => GetParametersParameter.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
    );
  }
}

