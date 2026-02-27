// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getParameters.
class GetParametersArgs {
  /// Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all parameters are listed.
  final pulumi.Input<String>? filter;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  GetParametersArgs({
    this.filter,
    this.project,
  });

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
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
