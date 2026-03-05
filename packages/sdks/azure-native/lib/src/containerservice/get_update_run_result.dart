// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_update_response.dart';
import 'system_data_response.dart';
import 'update_run_status_response.dart';
import 'update_run_strategy_response.dart';

/// Result data returned by getUpdateRun.
class GetUpdateRunResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String eTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The update to be applied to all clusters in the UpdateRun. The managedClusterUpdate can be modified until the run is started.
  final ManagedClusterUpdateResponse managedClusterUpdate;
  /// The name of the resource
  final String name;
  /// The provisioning state of the UpdateRun resource.
  final String provisioningState;
  /// The status of the UpdateRun.
  final UpdateRunStatusResponse status;
  /// The strategy defines the order in which the clusters will be updated.
  /// If not set, all members will be updated sequentially. The UpdateRun status will show a single UpdateStage and a single UpdateGroup targeting all members.
  /// The strategy of the UpdateRun can be modified until the run is started.
  final UpdateRunStrategyResponse? strategy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The resource id of the FleetUpdateStrategy resource to reference.
  ///
  /// When creating a new run, there are three ways to define a strategy for the run:
  /// 1. Define a new strategy in place: Set the "strategy" field.
  /// 2. Use an existing strategy: Set the "updateStrategyId" field. (since 2023-08-15-preview)
  /// 3. Use the default strategy to update all the members one by one: Leave both "updateStrategyId" and "strategy" unset. (since 2023-08-15-preview)
  ///
  /// Setting both "updateStrategyId" and "strategy" is invalid.
  ///
  /// UpdateRuns created by "updateStrategyId" snapshot the referenced UpdateStrategy at the time of creation and store it in the "strategy" field.
  /// Subsequent changes to the referenced FleetUpdateStrategy resource do not propagate.
  /// UpdateRunStrategy changes can be made directly on the "strategy" field before launching the UpdateRun.
  final String? updateStrategyId;

  /// Creates a new [GetUpdateRunResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [managedClusterUpdate] The update to be applied to all clusters in the UpdateRun. The managedClusterUpdate can be modified until the run is started.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the UpdateRun resource.
  /// [status] The status of the UpdateRun.
  /// [strategy] The strategy defines the order in which the clusters will be updated.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateStrategyId] The resource id of the FleetUpdateStrategy resource to reference.
  GetUpdateRunResult({
    required this.azureApiVersion,
    required this.eTag,
    required this.id,
    required this.managedClusterUpdate,
    required this.name,
    required this.provisioningState,
    required this.status,
    this.strategy,
    required this.systemData,
    required this.type,
    this.updateStrategyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'id': id,
      'managedClusterUpdate': managedClusterUpdate.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'strategy': ?strategy?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'updateStrategyId': ?updateStrategyId,
    };
  }

  factory GetUpdateRunResult.fromMap(Map<String, dynamic> map) {
    return GetUpdateRunResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      managedClusterUpdate: ManagedClusterUpdateResponse.fromMap((map['managedClusterUpdate']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: UpdateRunStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return UpdateRunStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updateStrategyId: (() { final guardedValue = map['updateStrategyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

