// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cloud_vm_cluster_iorm_config_cache_db_plan/cloud_vm_cluster_iorm_config_cache_db_plan.dart';

class CloudVmClusterIormConfigCache {
  final List<CloudVmClusterIormConfigCacheDbPlan> dbPlans;
  final String lifecycleDetails;
  final String lifecycleState;
  final String objective;

  CloudVmClusterIormConfigCache({
    required this.dbPlans,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbPlans'] = Input.encodeList<CloudVmClusterIormConfigCacheDbPlan,
        Map<String, dynamic>>(dbPlans, (value) => value.toMap());
    map['lifecycleDetails'] = lifecycleDetails;
    map['lifecycleState'] = lifecycleState;
    map['objective'] = objective;
    return map;
  }

  factory CloudVmClusterIormConfigCache.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterIormConfigCache(
      dbPlans: Input.decodeList<CloudVmClusterIormConfigCacheDbPlan>(
          map['dbPlans'],
          (value) => CloudVmClusterIormConfigCacheDbPlan.fromMap(
              (value as Map).cast<String, dynamic>())),
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      objective: map['objective'] as String,
    );
  }
}
