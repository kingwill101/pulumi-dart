// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_parameters_get_parameters_args_doc}
/// Arguments for getParameters.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_parameters_get_parameters_args_doc}
class GetParametersArgs {
  /// Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all parameters are listed.
  final pulumi.Input<String>? filter;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetParametersArgs].
  /// [filter] Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all parameters are listed.
  /// [project] The ID of the project.
  GetParametersArgs({
    String? filter,
    String? project,
  })  : filter = pulumi.Input.asOptionalInput<String>(filter),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetParametersArgs.fromMap(Map<String, dynamic> map) {
    return GetParametersArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
