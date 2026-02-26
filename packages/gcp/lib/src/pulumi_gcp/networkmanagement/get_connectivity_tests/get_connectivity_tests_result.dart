// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_connectivity_tests_connectivity_test/get_connectivity_tests_connectivity_test.dart';

/// Result data returned by getConnectivityTests.
class GetConnectivityTestsResult {
  /// A list of connectivity tests in the selected project matching the filter. Structure is defined below.
  final List<GetConnectivityTestsConnectivityTest> connectivityTests;
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The ID of the project in which the resource belongs.
  final String project;

  GetConnectivityTestsResult({
    required this.connectivityTests,
    this.filter,
    required this.id,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectivityTests'] = Input.encodeList<
        GetConnectivityTestsConnectivityTest,
        Map<String, dynamic>>(connectivityTests, (value) => value.toMap());
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['project'] = project;
    return map;
  }

  factory GetConnectivityTestsResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsResult(
      connectivityTests: Input.decodeList<GetConnectivityTestsConnectivityTest>(
          map['connectivityTests'],
          (value) => GetConnectivityTestsConnectivityTest.fromMap(
              (value as Map).cast<String, dynamic>())),
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      project: map['project'] as String,
    );
  }
}
