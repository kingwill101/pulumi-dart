// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_run_reachability_detail.dart';

/// Result data returned by getConnectivityTestRun.
class GetConnectivityTestRunResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String project;

  /// Connectivity test reachability details.
  /// Structure is documented below.
  final List<GetConnectivityTestRunReachabilityDetail> reachabilityDetails;

  /// Creates a new [GetConnectivityTestRunResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Required.
  /// [reachabilityDetails] Connectivity test reachability details.
  GetConnectivityTestRunResult({
    required this.id,
    required this.name,
    required this.project,
    required this.reachabilityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'project': project,
      'reachabilityDetails':
          pulumi.Input.encodeList<
            GetConnectivityTestRunReachabilityDetail,
            Map<String, dynamic>
          >(reachabilityDetails, (value) => value.toMap()),
    };
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
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
