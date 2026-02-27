// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_connectivity_test_run_reachability_detail/get_connectivity_test_run_reachability_detail.dart';

/// Result data returned by getConnectivityTestRun.
class GetConnectivityTestRunResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String project;

  /// Connectivity test reachability details.
  /// Structure is documented below.
  final List<GetConnectivityTestRunReachabilityDetail> reachabilityDetails;

  GetConnectivityTestRunResult({
    required this.id,
    required this.name,
    required this.project,
    required this.reachabilityDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['project'] = project;
    map['reachabilityDetails'] = pulumi.Input.encodeList<
        GetConnectivityTestRunReachabilityDetail,
        Map<String, dynamic>>(reachabilityDetails, (value) => value.toMap());
    return map;
  }

  factory GetConnectivityTestRunResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestRunResult(
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      reachabilityDetails:
          pulumi.Input.decodeList<GetConnectivityTestRunReachabilityDetail>(
              map['reachabilityDetails'],
              (value) => GetConnectivityTestRunReachabilityDetail.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
