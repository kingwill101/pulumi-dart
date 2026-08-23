// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_selector.dart';

/// {@template pulumi_containerservice_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_containerservice_load_balancer_args_doc}
class LoadBalancerArgs {
  /// Whether to automatically place services on the load balancer. If not supplied, the default value is true. If set to false manually, both of the external and the internal load balancer will not be selected for services unless they explicitly target it.
  final pulumi.Input<bool>? allowServicePlacement;
  /// The name of the load balancer.
  final pulumi.Input<String>? loadBalancerName;
  /// Name of the public load balancer. There will be an internal load balancer created if needed, and the name will be `&lt;name&gt;-internal`. The internal lb shares the same configurations as the external one. The internal lbs are not needed to be included in LoadBalancer list. There must be a name of kubernetes in the list.
  final pulumi.Input<String> name;
  /// Nodes that match this selector will be possible members of this load balancer.
  final pulumi.Input<LabelSelector>? nodeSelector;
  /// Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount&gt;=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  final pulumi.Input<String> primaryAgentPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// Only services that must match this selector can be placed on this load balancer.
  final pulumi.Input<LabelSelector>? serviceLabelSelector;
  /// Services created in namespaces that match the selector can be placed on this load balancer.
  final pulumi.Input<LabelSelector>? serviceNamespaceSelector;

  /// Creates a new [LoadBalancerArgs].
  /// [allowServicePlacement] Whether to automatically place services on the load balancer. If not supplied, the default value is true. If set to false manually, both of the external and the internal load balancer will not be selected for services unless they explicitly target it.
  /// [loadBalancerName] The name of the load balancer.
  /// [name] Name of the public load balancer. There will be an internal load balancer created if needed, and the name will be `&lt;name&gt;-internal`. The internal lb shares the same configurations as the external one. The internal lbs are not needed to be included in LoadBalancer list. There must be a name of kubernetes in the list.
  /// [nodeSelector] Nodes that match this selector will be possible members of this load balancer.
  /// [primaryAgentPoolName] Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount&gt;=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [serviceLabelSelector] Only services that must match this selector can be placed on this load balancer.
  /// [serviceNamespaceSelector] Services created in namespaces that match the selector can be placed on this load balancer.
  const LoadBalancerArgs({
    this.allowServicePlacement,
    this.loadBalancerName,
    required this.name,
    this.nodeSelector,
    required this.primaryAgentPoolName,
    required this.resourceGroupName,
    required this.resourceName,
    this.serviceLabelSelector,
    this.serviceNamespaceSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowServicePlacement': ?allowServicePlacement,
      'loadBalancerName': ?loadBalancerName,
      'name': name,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'primaryAgentPoolName': primaryAgentPoolName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'serviceLabelSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(serviceLabelSelector, (value) => value.toMap()),
      'serviceNamespaceSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(serviceNamespaceSelector, (value) => value.toMap()),
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      allowServicePlacement: (() { final guardedValue = map['allowServicePlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryAgentPoolName: pulumi.Input.fromValue(map['primaryAgentPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      serviceLabelSelector: (() { final guardedValue = map['serviceLabelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceNamespaceSelector: (() { final guardedValue = map['serviceNamespaceSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
