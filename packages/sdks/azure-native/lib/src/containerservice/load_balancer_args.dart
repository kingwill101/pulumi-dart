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
  /// Name of the public load balancer. There will be an internal load balancer created if needed, and the name will be `<name>-internal`. The internal lb shares the same configurations as the external one. The internal lbs are not needed to be included in LoadBalancer list. There must be a name of kubernetes in the list.
  final pulumi.Input<String> name;
  /// Nodes that match this selector will be possible members of this load balancer.
  final pulumi.Input<LabelSelector>? nodeSelector;
  /// Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount>=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
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
  /// [name] Name of the public load balancer. There will be an internal load balancer created if needed, and the name will be `<name>-internal`. The internal lb shares the same configurations as the external one. The internal lbs are not needed to be included in LoadBalancer list. There must be a name of kubernetes in the list.
  /// [nodeSelector] Nodes that match this selector will be possible members of this load balancer.
  /// [primaryAgentPoolName] Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount>=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [serviceLabelSelector] Only services that must match this selector can be placed on this load balancer.
  /// [serviceNamespaceSelector] Services created in namespaces that match the selector can be placed on this load balancer.
  LoadBalancerArgs({
    pulumi.Output<bool>? allowServicePlacement,
    pulumi.Output<String>? loadBalancerName,
    required pulumi.Output<String> name,
    pulumi.Output<LabelSelector>? nodeSelector,
    required pulumi.Output<String> primaryAgentPoolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<LabelSelector>? serviceLabelSelector,
    pulumi.Output<LabelSelector>? serviceNamespaceSelector,
  }) :
      allowServicePlacement = pulumi.Input.asOptionalInput<bool>(allowServicePlacement),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      name = pulumi.Input.asInput<String>(name),
      nodeSelector = pulumi.Input.asOptionalInput<LabelSelector>(nodeSelector),
      primaryAgentPoolName = pulumi.Input.asInput<String>(primaryAgentPoolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      serviceLabelSelector = pulumi.Input.asOptionalInput<LabelSelector>(serviceLabelSelector),
      serviceNamespaceSelector = pulumi.Input.asOptionalInput<LabelSelector>(serviceNamespaceSelector);

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
      allowServicePlacement: map['allowServicePlacement'] == null ? null : pulumi.Output.create<bool>(map['allowServicePlacement'] as bool),
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      nodeSelector: map['nodeSelector'] == null ? null : pulumi.Output.create<LabelSelector>(LabelSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>())),
      primaryAgentPoolName: pulumi.Output.create<String>(map['primaryAgentPoolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      serviceLabelSelector: map['serviceLabelSelector'] == null ? null : pulumi.Output.create<LabelSelector>(LabelSelector.fromMap((map['serviceLabelSelector'] as Map).cast<String, dynamic>())),
      serviceNamespaceSelector: map['serviceNamespaceSelector'] == null ? null : pulumi.Output.create<LabelSelector>(LabelSelector.fromMap((map['serviceNamespaceSelector'] as Map).cast<String, dynamic>())),
    );
  }
}

