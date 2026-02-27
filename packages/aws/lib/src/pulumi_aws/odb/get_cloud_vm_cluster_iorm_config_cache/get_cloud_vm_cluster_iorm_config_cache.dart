// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cloud_vm_cluster_iorm_config_cache_db_plan/get_cloud_vm_cluster_iorm_config_cache_db_plan.dart';

class GetCloudVmClusterIormConfigCache {
  final List<GetCloudVmClusterIormConfigCacheDbPlan> dbPlans;
  final String lifecycleDetails;
  final String lifecycleState;
  final String objective;

  GetCloudVmClusterIormConfigCache({
    required this.dbPlans,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbPlans'] = pulumi.Input.encodeList<
        GetCloudVmClusterIormConfigCacheDbPlan,
        Map<String, dynamic>>(dbPlans, (value) => value.toMap());
    map['lifecycleDetails'] = lifecycleDetails;
    map['lifecycleState'] = lifecycleState;
    map['objective'] = objective;
    return map;
  }

  factory GetCloudVmClusterIormConfigCache.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterIormConfigCache(
      dbPlans: pulumi.Input.decodeList<GetCloudVmClusterIormConfigCacheDbPlan>(
          map['dbPlans'],
          (value) => GetCloudVmClusterIormConfigCacheDbPlan.fromMap(
              (value as Map).cast<String, dynamic>())),
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      objective: map['objective'] as String,
    );
  }
}
