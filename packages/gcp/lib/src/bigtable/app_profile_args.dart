// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_profile_data_boost_isolation_read_only.dart';
import 'app_profile_single_cluster_routing.dart';
import 'app_profile_standard_isolation.dart';

/// {@template pulumi_bigtable_app_profile_app_profile_args_doc}
/// The set of arguments for AppProfile.
/// {@endtemplate}
/// {@macro pulumi_bigtable_app_profile_app_profile_args_doc}
class AppProfileArgs {
  /// The unique name of the app profile in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String> appProfileId;

  /// Specifies that this app profile is intended for read-only usage via the Data Boost feature.
  /// Structure is documented below.
  final pulumi.Input<AppProfileDataBoostIsolationReadOnly>?
  dataBoostIsolationReadOnly;

  /// Long form description of the use case for this app profile.
  final pulumi.Input<String>? description;

  /// If true, ignore safety checks when deleting/updating the app profile.
  final pulumi.Input<bool>? ignoreWarnings;

  /// The name of the instance to create the app profile within.
  final pulumi.Input<String>? instance;

  /// The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  final pulumi.Input<List<String>>? multiClusterRoutingClusterIds;

  /// If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
  /// in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
  /// consistency to improve availability.
  final pulumi.Input<bool>? multiClusterRoutingUseAny;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Must be used with multi-cluster routing. If true, then this app profile will use row affinity sticky routing. With row affinity, Bigtable will route single row key requests based on the row key, rather than randomly. Instead, each row key will be assigned to a cluster by Cloud Bigtable, and will stick to that cluster. Choosing this option improves read-your-writes consistency for most requests under most circumstances, without sacrificing availability. Consistency is not guaranteed, as requests may still fail over between clusters in the event of errors or latency.
  final pulumi.Input<bool>? rowAffinity;

  /// Use a single-cluster routing policy.
  /// Structure is documented below.
  final pulumi.Input<AppProfileSingleClusterRouting>? singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from other use cases.
  /// Structure is documented below.
  final pulumi.Input<AppProfileStandardIsolation>? standardIsolation;

  /// Creates a new [AppProfileArgs].
  /// [appProfileId] The unique name of the app profile in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [dataBoostIsolationReadOnly] Specifies that this app profile is intended for read-only usage via the Data Boost feature.
  /// [description] Long form description of the use case for this app profile.
  /// [ignoreWarnings] If true, ignore safety checks when deleting/updating the app profile.
  /// [instance] The name of the instance to create the app profile within.
  /// [multiClusterRoutingClusterIds] The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  /// [multiClusterRoutingUseAny] If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
  /// [project] The ID of the project in which the resource belongs.
  /// [rowAffinity] Must be used with multi-cluster routing. If true, then this app profile will use row affinity sticky routing. With row affinity, Bigtable will route single row key requests based on the row key, rather than randomly. Instead, each row key will be assigned to a cluster by Cloud Bigtable, and will stick to that cluster. Choosing this option improves read-your-writes consistency for most requests under most circumstances, without sacrificing availability. Consistency is not guaranteed, as requests may still fail over between clusters in the event of errors or latency.
  /// [singleClusterRouting] Use a single-cluster routing policy.
  /// [standardIsolation] The standard options used for isolating this app profile's traffic from other use cases.
  AppProfileArgs({
    required String appProfileId,
    AppProfileDataBoostIsolationReadOnly? dataBoostIsolationReadOnly,
    String? description,
    bool? ignoreWarnings,
    String? instance,
    List<String>? multiClusterRoutingClusterIds,
    bool? multiClusterRoutingUseAny,
    String? project,
    bool? rowAffinity,
    AppProfileSingleClusterRouting? singleClusterRouting,
    AppProfileStandardIsolation? standardIsolation,
  }) : appProfileId = pulumi.Input.asInput<String>(appProfileId),
       dataBoostIsolationReadOnly =
           pulumi.Input.asOptionalInput<AppProfileDataBoostIsolationReadOnly>(
             dataBoostIsolationReadOnly,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       ignoreWarnings = pulumi.Input.asOptionalInput<bool>(ignoreWarnings),
       instance = pulumi.Input.asOptionalInput<String>(instance),
       multiClusterRoutingClusterIds = pulumi
           .Input.asOptionalInput<List<String>>(multiClusterRoutingClusterIds),
       multiClusterRoutingUseAny = pulumi.Input.asOptionalInput<bool>(
         multiClusterRoutingUseAny,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       rowAffinity = pulumi.Input.asOptionalInput<bool>(rowAffinity),
       singleClusterRouting =
           pulumi.Input.asOptionalInput<AppProfileSingleClusterRouting>(
             singleClusterRouting,
           ),
       standardIsolation =
           pulumi.Input.asOptionalInput<AppProfileStandardIsolation>(
             standardIsolation,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': appProfileId,
      'dataBoostIsolationReadOnly':
          ?pulumi.Input.mapOptionalInputValue<
            AppProfileDataBoostIsolationReadOnly,
            Map<String, dynamic>
          >(dataBoostIsolationReadOnly, (value) => value.toMap()),
      'description': ?description,
      'ignoreWarnings': ?ignoreWarnings,
      'instance': ?instance,
      'multiClusterRoutingClusterIds': ?multiClusterRoutingClusterIds,
      'multiClusterRoutingUseAny': ?multiClusterRoutingUseAny,
      'project': ?project,
      'rowAffinity': ?rowAffinity,
      'singleClusterRouting':
          ?pulumi.Input.mapOptionalInputValue<
            AppProfileSingleClusterRouting,
            Map<String, dynamic>
          >(singleClusterRouting, (value) => value.toMap()),
      'standardIsolation':
          ?pulumi.Input.mapOptionalInputValue<
            AppProfileStandardIsolation,
            Map<String, dynamic>
          >(standardIsolation, (value) => value.toMap()),
    };
  }

  factory AppProfileArgs.fromMap(Map<String, dynamic> map) {
    return AppProfileArgs(
      appProfileId: map['appProfileId'] as String,
      dataBoostIsolationReadOnly: map['dataBoostIsolationReadOnly'] == null
          ? null
          : AppProfileDataBoostIsolationReadOnly.fromMap(
              (map['dataBoostIsolationReadOnly'] as Map)
                  .cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ignoreWarnings: map['ignoreWarnings'] == null
          ? null
          : map['ignoreWarnings'] as bool,
      instance: map['instance'] == null ? null : map['instance'] as String,
      multiClusterRoutingClusterIds:
          map['multiClusterRoutingClusterIds'] == null
          ? null
          : (map['multiClusterRoutingClusterIds'] as List).cast<String>(),
      multiClusterRoutingUseAny: map['multiClusterRoutingUseAny'] == null
          ? null
          : map['multiClusterRoutingUseAny'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      rowAffinity: map['rowAffinity'] == null
          ? null
          : map['rowAffinity'] as bool,
      singleClusterRouting: map['singleClusterRouting'] == null
          ? null
          : AppProfileSingleClusterRouting.fromMap(
              (map['singleClusterRouting'] as Map).cast<String, dynamic>(),
            ),
      standardIsolation: map['standardIsolation'] == null
          ? null
          : AppProfileStandardIsolation.fromMap(
              (map['standardIsolation'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
