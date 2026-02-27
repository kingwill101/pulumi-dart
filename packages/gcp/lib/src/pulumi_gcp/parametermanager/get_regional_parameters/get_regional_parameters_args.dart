// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionalParameters.
class GetRegionalParametersArgs {
  /// Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all regional parameters are listed.
  final pulumi.Input<String>? filter;

  /// The location of regional parameter.
  final pulumi.Input<String> location;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  GetRegionalParametersArgs({
    this.filter,
    required this.location,
    this.project,
  });

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
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
