// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'update_run_strategy_response.dart';

/// Result data returned by getFleetUpdateStrategy.
class GetFleetUpdateStrategyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String eTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state of the UpdateStrategy resource.
  final String provisioningState;
  /// Defines the update sequence of the clusters.
  final UpdateRunStrategyResponse strategy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFleetUpdateStrategyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the UpdateStrategy resource.
  /// [strategy] Defines the update sequence of the clusters.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFleetUpdateStrategyResult({
    required this.azureApiVersion,
    required this.eTag,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.strategy,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'strategy': strategy.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFleetUpdateStrategyResult.fromMap(Map<String, dynamic> map) {
    return GetFleetUpdateStrategyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      strategy: UpdateRunStrategyResponse.fromMap((map['strategy']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
