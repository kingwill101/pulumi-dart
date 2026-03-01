// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_iorm_config_cache_db_plan.dart';

class GetCloudVmClusterIormConfigCache {
  /// A `db_plans` block as defined above.
  final List<GetCloudVmClusterIormConfigCacheDbPlan> dbPlans;
  /// Additional information about the current `lifecycleState`.
  final String lifecycleDetails;
  /// The current state of IORM configuration for the Exadata DB system.
  final String lifecycleState;
  /// The current value for the IORM objective. The default is `AUTO`.
  final String objective;

  /// Creates a new [GetCloudVmClusterIormConfigCache].
  /// [dbPlans] A `db_plans` block as defined above.
  /// [lifecycleDetails] Additional information about the current `lifecycleState`.
  /// [lifecycleState] The current state of IORM configuration for the Exadata DB system.
  /// [objective] The current value for the IORM objective. The default is `AUTO`.
  GetCloudVmClusterIormConfigCache({
    required this.dbPlans,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbPlans': pulumi.Input.encodeList<GetCloudVmClusterIormConfigCacheDbPlan, Map<String, dynamic>>(dbPlans, (value) => value.toMap()),
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'objective': objective,
    };
  }

  factory GetCloudVmClusterIormConfigCache.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterIormConfigCache(
      dbPlans: pulumi.Input.decodeList<GetCloudVmClusterIormConfigCacheDbPlan>(map['dbPlans'], (value) => GetCloudVmClusterIormConfigCacheDbPlan.fromMap((value as Map).cast<String, dynamic>())),
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      objective: map['objective'] as String,
    );
  }
}

