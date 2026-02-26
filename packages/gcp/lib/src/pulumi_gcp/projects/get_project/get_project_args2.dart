// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProject.
class GetProjectArgs2 {
  /// A string filter as defined in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list#query-parameters).
  final Input<String> filter;

  GetProjectArgs2({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    return map;
  }

  factory GetProjectArgs2.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs2(
      filter: Input.asInput<String>(map['filter']),
    );
  }
}
