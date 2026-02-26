// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_status_condition/get_service_status_condition.dart';
import '../get_service_status_traffic/get_service_status_traffic.dart';

class GetServiceStatus {
  /// Array of observed Service Conditions, indicating the current ready state of the service.
  final List<GetServiceStatusCondition> conditions;

  /// From ConfigurationStatus. LatestCreatedRevisionName is the last revision that was created
  /// from this Service's Configuration. It might not be ready yet, for that use
  /// LatestReadyRevisionName.
  final String latestCreatedRevisionName;

  /// From ConfigurationStatus. LatestReadyRevisionName holds the name of the latest Revision
  /// stamped out from this Service's Configuration that has had its "Ready" condition become
  /// "True".
  final String latestReadyRevisionName;

  /// ObservedGeneration is the 'Generation' of the Route that was last processed by the
  /// controller.
  ///
  /// Clients polling for completed reconciliation should poll until observedGeneration =
  /// metadata.generation and the Ready condition's status is True or False.
  final int observedGeneration;

  /// Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// and Configurations
  final List<GetServiceStatusTraffic> traffics;

  /// From RouteStatus. URL holds the url that will distribute traffic over the provided traffic
  /// targets. It generally has the form
  /// https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app
  final String url;

  GetServiceStatus({
    required this.conditions,
    required this.latestCreatedRevisionName,
    required this.latestReadyRevisionName,
    required this.observedGeneration,
    required this.traffics,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] =
        Input.encodeList<GetServiceStatusCondition, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['latestCreatedRevisionName'] = latestCreatedRevisionName;
    map['latestReadyRevisionName'] = latestReadyRevisionName;
    map['observedGeneration'] = observedGeneration;
    map['traffics'] =
        Input.encodeList<GetServiceStatusTraffic, Map<String, dynamic>>(
            traffics, (value) => value.toMap());
    map['url'] = url;
    return map;
  }

  factory GetServiceStatus.fromMap(Map<String, dynamic> map) {
    return GetServiceStatus(
      conditions: Input.decodeList<GetServiceStatusCondition>(
          map['conditions'],
          (value) => GetServiceStatusCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
      latestCreatedRevisionName: map['latestCreatedRevisionName'] as String,
      latestReadyRevisionName: map['latestReadyRevisionName'] as String,
      observedGeneration: map['observedGeneration'] as int,
      traffics: Input.decodeList<GetServiceStatusTraffic>(
          map['traffics'],
          (value) => GetServiceStatusTraffic.fromMap(
              (value as Map).cast<String, dynamic>())),
      url: map['url'] as String,
    );
  }
}
