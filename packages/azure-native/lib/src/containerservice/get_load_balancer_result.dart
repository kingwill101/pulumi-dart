// ignore_for_file: unused_element, unnecessary_cast

import 'label_selector_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  /// Whether to automatically place services on the load balancer. If not supplied, the default value is true. If set to false manually, both of the external and the internal load balancer will not be selected for services unless they explicitly target it.
  final bool? allowServicePlacement;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Nodes that match this selector will be possible members of this load balancer.
  final LabelSelectorResponse? nodeSelector;
  /// Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount>=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  final String primaryAgentPoolName;
  /// The current provisioning state.
  final String provisioningState;
  /// Only services that must match this selector can be placed on this load balancer.
  final LabelSelectorResponse? serviceLabelSelector;
  /// Services created in namespaces that match the selector can be placed on this load balancer.
  final LabelSelectorResponse? serviceNamespaceSelector;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLoadBalancerResult].
  /// [allowServicePlacement] Whether to automatically place services on the load balancer. If not supplied, the default value is true. If set to false manually, both of the external and the internal load balancer will not be selected for services unless they explicitly target it.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [nodeSelector] Nodes that match this selector will be possible members of this load balancer.
  /// [primaryAgentPoolName] Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount>=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  /// [provisioningState] The current provisioning state.
  /// [serviceLabelSelector] Only services that must match this selector can be placed on this load balancer.
  /// [serviceNamespaceSelector] Services created in namespaces that match the selector can be placed on this load balancer.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetLoadBalancerResult({
    this.allowServicePlacement,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.nodeSelector,
    required this.primaryAgentPoolName,
    required this.provisioningState,
    this.serviceLabelSelector,
    this.serviceNamespaceSelector,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowServicePlacement': ?allowServicePlacement,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'nodeSelector': ?nodeSelector == null ? null : nodeSelector!.toMap(),
      'primaryAgentPoolName': primaryAgentPoolName,
      'provisioningState': provisioningState,
      'serviceLabelSelector': ?serviceLabelSelector == null ? null : serviceLabelSelector!.toMap(),
      'serviceNamespaceSelector': ?serviceNamespaceSelector == null ? null : serviceNamespaceSelector!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      allowServicePlacement: map['allowServicePlacement'] == null ? null : map['allowServicePlacement'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nodeSelector: map['nodeSelector'] == null ? null : LabelSelectorResponse.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>()),
      primaryAgentPoolName: map['primaryAgentPoolName'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceLabelSelector: map['serviceLabelSelector'] == null ? null : LabelSelectorResponse.fromMap((map['serviceLabelSelector'] as Map).cast<String, dynamic>()),
      serviceNamespaceSelector: map['serviceNamespaceSelector'] == null ? null : LabelSelectorResponse.fromMap((map['serviceNamespaceSelector'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

