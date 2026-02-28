// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_regional_parameters_get_regional_parameters_args_doc}
/// Arguments for getRegionalParameters.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_regional_parameters_get_regional_parameters_args_doc}
class GetRegionalParametersArgs {
  /// Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all regional parameters are listed.
  final pulumi.Input<String>? filter;

  /// The location of regional parameter.
  final pulumi.Input<String> location;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRegionalParametersArgs].
  /// [filter] Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all regional parameters are listed.
  /// [location] The location of regional parameter.
  /// [project] The ID of the project.
  GetRegionalParametersArgs({
    String? filter,
    required String location,
    String? project,
  })  : filter = pulumi.Input.asOptionalInput<String>(filter),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetRegionalParametersArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalParametersArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
