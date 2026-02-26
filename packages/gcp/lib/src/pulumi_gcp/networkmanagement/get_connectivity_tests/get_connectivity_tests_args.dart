// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConnectivityTests.
class GetConnectivityTestsArgs {
  /// Lists the ConnectivityTests that match the [filter expression](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests/list#query-parameters). A filter expression filters the resources listed in the response.
  final Input<String>? filter;

  /// The ID of the project.
  final Input<String>? project;

  GetConnectivityTestsArgs({
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

  factory GetConnectivityTestsArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
