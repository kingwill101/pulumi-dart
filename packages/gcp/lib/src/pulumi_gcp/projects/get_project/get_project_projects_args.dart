// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProject.
class GetProjectProjectsArgs {
  /// A string filter as defined in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list#query-parameters).
  final pulumi.Input<String> filter;

  GetProjectProjectsArgs({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    return map;
  }

  factory GetProjectProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectProjectsArgs(
      filter: pulumi.Input.asInput<String>(map['filter']),
    );
  }
}
