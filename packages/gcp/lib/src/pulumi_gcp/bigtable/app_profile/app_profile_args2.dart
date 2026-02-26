// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_profile_data_boost_isolation_read_only/app_profile_data_boost_isolation_read_only2.dart';
import '../app_profile_single_cluster_routing/app_profile_single_cluster_routing2.dart';
import '../app_profile_standard_isolation/app_profile_standard_isolation2.dart';

/// The set of arguments for AppProfile.
class AppProfileArgs2 {
  /// The unique name of the app profile in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final Input<String> appProfileId;

  /// Specifies that this app profile is intended for read-only usage via the Data Boost feature.
  /// Structure is documented below.
  final Input<AppProfileDataBoostIsolationReadOnly2>?
      dataBoostIsolationReadOnly;

  /// Long form description of the use case for this app profile.
  final Input<String>? description;

  /// If true, ignore safety checks when deleting/updating the app profile.
  final Input<bool>? ignoreWarnings;

  /// The name of the instance to create the app profile within.
  final Input<String>? instance;

  /// The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  final Input<List<String>>? multiClusterRoutingClusterIds;

  /// If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
  /// in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
  /// consistency to improve availability.
  final Input<bool>? multiClusterRoutingUseAny;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Must be used with multi-cluster routing. If true, then this app profile will use row affinity sticky routing. With row affinity, Bigtable will route single row key requests based on the row key, rather than randomly. Instead, each row key will be assigned to a cluster by Cloud Bigtable, and will stick to that cluster. Choosing this option improves read-your-writes consistency for most requests under most circumstances, without sacrificing availability. Consistency is not guaranteed, as requests may still fail over between clusters in the event of errors or latency.
  final Input<bool>? rowAffinity;

  /// Use a single-cluster routing policy.
  /// Structure is documented below.
  final Input<AppProfileSingleClusterRouting2>? singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from other use cases.
  /// Structure is documented below.
  final Input<AppProfileStandardIsolation2>? standardIsolation;

  AppProfileArgs2({
    required this.appProfileId,
    this.dataBoostIsolationReadOnly,
    this.description,
    this.ignoreWarnings,
    this.instance,
    this.multiClusterRoutingClusterIds,
    this.multiClusterRoutingUseAny,
    this.project,
    this.rowAffinity,
    this.singleClusterRouting,
    this.standardIsolation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appProfileId'] = appProfileId;
    final dataBoostIsolationReadOnlyValue = dataBoostIsolationReadOnly;
    if (dataBoostIsolationReadOnlyValue != null) {
      map['dataBoostIsolationReadOnly'] = Input.mapOptionalInputValue<
              AppProfileDataBoostIsolationReadOnly2, Map<String, dynamic>>(
          dataBoostIsolationReadOnlyValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ignoreWarningsValue = ignoreWarnings;
    if (ignoreWarningsValue != null) {
      map['ignoreWarnings'] = ignoreWarningsValue;
    }
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final multiClusterRoutingClusterIdsValue = multiClusterRoutingClusterIds;
    if (multiClusterRoutingClusterIdsValue != null) {
      map['multiClusterRoutingClusterIds'] = multiClusterRoutingClusterIdsValue;
    }
    final multiClusterRoutingUseAnyValue = multiClusterRoutingUseAny;
    if (multiClusterRoutingUseAnyValue != null) {
      map['multiClusterRoutingUseAny'] = multiClusterRoutingUseAnyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rowAffinityValue = rowAffinity;
    if (rowAffinityValue != null) {
      map['rowAffinity'] = rowAffinityValue;
    }
    final singleClusterRoutingValue = singleClusterRouting;
    if (singleClusterRoutingValue != null) {
      map['singleClusterRouting'] = Input.mapOptionalInputValue<
              AppProfileSingleClusterRouting2, Map<String, dynamic>>(
          singleClusterRoutingValue, (value) => value.toMap());
    }
    final standardIsolationValue = standardIsolation;
    if (standardIsolationValue != null) {
      map['standardIsolation'] = Input.mapOptionalInputValue<
              AppProfileStandardIsolation2, Map<String, dynamic>>(
          standardIsolationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppProfileArgs2.fromMap(Map<String, dynamic> map) {
    return AppProfileArgs2(
      appProfileId: Input.asInput<String>(map['appProfileId']),
      dataBoostIsolationReadOnly:
          Input.asOptionalInput<AppProfileDataBoostIsolationReadOnly2>(
              map['dataBoostIsolationReadOnly']),
      description: Input.asOptionalInput<String>(map['description']),
      ignoreWarnings: Input.asOptionalInput<bool>(map['ignoreWarnings']),
      instance: Input.asOptionalInput<String>(map['instance']),
      multiClusterRoutingClusterIds: Input.asOptionalInput<List<String>>(
          map['multiClusterRoutingClusterIds']),
      multiClusterRoutingUseAny:
          Input.asOptionalInput<bool>(map['multiClusterRoutingUseAny']),
      project: Input.asOptionalInput<String>(map['project']),
      rowAffinity: Input.asOptionalInput<bool>(map['rowAffinity']),
      singleClusterRouting:
          Input.asOptionalInput<AppProfileSingleClusterRouting2>(
              map['singleClusterRouting']),
      standardIsolation: Input.asOptionalInput<AppProfileStandardIsolation2>(
          map['standardIsolation']),
    );
  }
}
