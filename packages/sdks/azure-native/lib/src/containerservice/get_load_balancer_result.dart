// ignore_for_file: unused_element, unnecessary_cast

import 'label_selector_load_balancer_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  /// Whether to automatically place services on the load balancer. If not supplied, the default value is true. If set to false manually, both of the external and the internal load balancer will not be selected for services unless they explicitly target it.
  final bool? allowServicePlacement;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Nodes that match this selector will be possible members of this load balancer.
  final LabelSelectorLoadBalancerResponse? nodeSelector;
  /// Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount&gt;=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  final String? primaryAgentPoolName;
  /// The current provisioning state.
  final String? provisioningState;
  /// Only services that must match this selector can be placed on this load balancer.
  final LabelSelectorLoadBalancerResponse? serviceLabelSelector;
  /// Services created in namespaces that match the selector can be placed on this load balancer.
  final LabelSelectorLoadBalancerResponse? serviceNamespaceSelector;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetLoadBalancerResult].
  /// [allowServicePlacement] Whether to automatically place services on the load balancer. If not supplied, the default value is true. If set to false manually, both of the external and the internal load balancer will not be selected for services unless they explicitly target it.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [nodeSelector] Nodes that match this selector will be possible members of this load balancer.
  /// [primaryAgentPoolName] Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount&gt;=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  /// [provisioningState] The current provisioning state.
  /// [serviceLabelSelector] Only services that must match this selector can be placed on this load balancer.
  /// [serviceNamespaceSelector] Services created in namespaces that match the selector can be placed on this load balancer.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetLoadBalancerResult({
    this.allowServicePlacement,
    this.azureApiVersion,
    this.id,
    this.name,
    this.nodeSelector,
    this.primaryAgentPoolName,
    this.provisioningState,
    this.serviceLabelSelector,
    this.serviceNamespaceSelector,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowServicePlacement': ?allowServicePlacement,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'nodeSelector': ?nodeSelector?.toMap(),
      'primaryAgentPoolName': ?primaryAgentPoolName,
      'provisioningState': ?provisioningState,
      'serviceLabelSelector': ?serviceLabelSelector?.toMap(),
      'serviceNamespaceSelector': ?serviceNamespaceSelector?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      allowServicePlacement: (() { final guardedValue = map['allowServicePlacement']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      primaryAgentPoolName: (() { final guardedValue = map['primaryAgentPoolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLabelSelector: (() { final guardedValue = map['serviceLabelSelector']; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceNamespaceSelector: (() { final guardedValue = map['serviceNamespaceSelector']; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
