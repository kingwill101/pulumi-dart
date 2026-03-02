// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_iorm_config_cache_db_plan.dart';

class GetCloudVmClusterIormConfigCache {
  final pulumi.Input<List<GetCloudVmClusterIormConfigCacheDbPlan>> dbPlans;
  final pulumi.Input<String> lifecycleDetails;
  final pulumi.Input<String> lifecycleState;
  final pulumi.Input<String> objective;

  /// Creates a new [GetCloudVmClusterIormConfigCache].
  /// [dbPlans] Required.
  /// [lifecycleDetails] Required.
  /// [lifecycleState] Required.
  /// [objective] Required.
  GetCloudVmClusterIormConfigCache({
    required this.dbPlans,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbPlans': pulumi.Input.mapInputValue<List<GetCloudVmClusterIormConfigCacheDbPlan>, List<Map<String, dynamic>>>(dbPlans, (value) => pulumi.Input.encodeList<GetCloudVmClusterIormConfigCacheDbPlan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'objective': objective,
    };
  }

  factory GetCloudVmClusterIormConfigCache.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterIormConfigCache(
      dbPlans: (pulumi.Input.decodeList<GetCloudVmClusterIormConfigCacheDbPlan>(map['dbPlans'], (value) => GetCloudVmClusterIormConfigCacheDbPlan.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lifecycleDetails: (map['lifecycleDetails'] as String).input(),
      lifecycleState: (map['lifecycleState'] as String).input(),
      objective: (map['objective'] as String).input(),
    );
  }
}

