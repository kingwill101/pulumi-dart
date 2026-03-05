// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_iorm_config_cache_db_plan.dart';

class CloudVmClusterIormConfigCache {
  final pulumi.Input<List<CloudVmClusterIormConfigCacheDbPlan>> dbPlans;
  final pulumi.Input<String> lifecycleDetails;
  final pulumi.Input<String> lifecycleState;
  final pulumi.Input<String> objective;

  /// Creates a new [CloudVmClusterIormConfigCache].
  /// [dbPlans] Required.
  /// [lifecycleDetails] Required.
  /// [lifecycleState] Required.
  /// [objective] Required.
  CloudVmClusterIormConfigCache({
    required this.dbPlans,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbPlans': pulumi.Input.mapInputValue<List<CloudVmClusterIormConfigCacheDbPlan>, List<Map<String, dynamic>>>(dbPlans, (value) => pulumi.Input.encodeList<CloudVmClusterIormConfigCacheDbPlan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'objective': objective,
    };
  }

  factory CloudVmClusterIormConfigCache.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterIormConfigCache(
      dbPlans: pulumi.Input.fromValue(pulumi.Input.decodeList<CloudVmClusterIormConfigCacheDbPlan>(map['dbPlans']!, (value) => CloudVmClusterIormConfigCacheDbPlan.fromMap((value as Map).cast<String, dynamic>()))),
      lifecycleDetails: pulumi.Input.fromValue(map['lifecycleDetails'] as String),
      lifecycleState: pulumi.Input.fromValue(map['lifecycleState'] as String),
      objective: pulumi.Input.fromValue(map['objective'] as String),
    );
  }
}

