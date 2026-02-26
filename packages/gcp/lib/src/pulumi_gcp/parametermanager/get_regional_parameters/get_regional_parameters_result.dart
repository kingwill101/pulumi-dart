// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_regional_parameters_parameter/get_regional_parameters_parameter.dart';

/// Result data returned by getRegionalParameters.
class GetRegionalParametersResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// A list of regional parameters matching the filter. Structure is defined below.
  final List<GetRegionalParametersParameter> parameters;

  /// The ID of the project in which the resource belongs.
  final String project;

  GetRegionalParametersResult({
    this.filter,
    required this.id,
    required this.location,
    required this.parameters,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['location'] = location;
    map['parameters'] =
        Input.encodeList<GetRegionalParametersParameter, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    map['project'] = project;
    return map;
  }

  factory GetRegionalParametersResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalParametersResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      parameters: Input.decodeList<GetRegionalParametersParameter>(
          map['parameters'],
          (value) => GetRegionalParametersParameter.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
    );
  }
}
