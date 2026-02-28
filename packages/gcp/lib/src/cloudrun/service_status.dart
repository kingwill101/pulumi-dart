// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_status_condition.dart';
import 'service_status_traffic.dart';

class ServiceStatus {
  /// (Output)
  /// Array of observed Service Conditions, indicating the current ready state of the service.
  /// Structure is documented below.
  final List<ServiceStatusCondition>? conditions;
  /// (Output)
  /// From ConfigurationStatus. LatestCreatedRevisionName is the last revision that was created
  /// from this Service's Configuration. It might not be ready yet, for that use
  /// LatestReadyRevisionName.
  final String? latestCreatedRevisionName;
  /// (Output)
  /// From ConfigurationStatus. LatestReadyRevisionName holds the name of the latest Revision
  /// stamped out from this Service's Configuration that has had its "Ready" condition become
  /// "True".
  final String? latestReadyRevisionName;
  /// (Output)
  /// ObservedGeneration is the 'Generation' of the Route that was last processed by the
  /// controller.
  /// Clients polling for completed reconciliation should poll until observedGeneration =
  /// metadata.generation and the Ready condition's status is True or False.
  final int? observedGeneration;
  /// Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// and Configurations
  /// Structure is documented below.
  final List<ServiceStatusTraffic>? traffics;
  /// (Output)
  /// URL displays the URL for accessing tagged traffic targets. URL is displayed in status,
  /// and is disallowed on spec. URL must contain a scheme (e.g. http://) and a hostname,
  /// but may not contain anything else (e.g. basic auth, url path, etc.)
  final String? url;

  /// Creates a new [ServiceStatus].
  /// [conditions] (Output)
  /// [latestCreatedRevisionName] (Output)
  /// [latestReadyRevisionName] (Output)
  /// [observedGeneration] (Output)
  /// [traffics] Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// [url] (Output)
  ServiceStatus({
    this.conditions,
    this.latestCreatedRevisionName,
    this.latestReadyRevisionName,
    this.observedGeneration,
    this.traffics,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ServiceStatusCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'latestCreatedRevisionName': ?latestCreatedRevisionName,
      'latestReadyRevisionName': ?latestReadyRevisionName,
      'observedGeneration': ?observedGeneration,
      'traffics': ?traffics == null ? null : pulumi.Input.encodeList<ServiceStatusTraffic, Map<String, dynamic>>(traffics!, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory ServiceStatus.fromMap(Map<String, dynamic> map) {
    return ServiceStatus(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ServiceStatusCondition>(map['conditions'], (value) => ServiceStatusCondition.fromMap((value as Map).cast<String, dynamic>())),
      latestCreatedRevisionName: map['latestCreatedRevisionName'] == null ? null : map['latestCreatedRevisionName'] as String,
      latestReadyRevisionName: map['latestReadyRevisionName'] == null ? null : map['latestReadyRevisionName'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      traffics: map['traffics'] == null ? null : pulumi.Input.decodeList<ServiceStatusTraffic>(map['traffics'], (value) => ServiceStatusTraffic.fromMap((value as Map).cast<String, dynamic>())),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

