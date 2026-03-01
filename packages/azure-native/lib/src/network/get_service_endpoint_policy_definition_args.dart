// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_service_endpoint_policy_definition_args_doc}
/// Arguments for getServiceEndpointPolicyDefinition.
/// {@endtemplate}
/// {@macro pulumi_network_get_service_endpoint_policy_definition_args_doc}
class GetServiceEndpointPolicyDefinitionArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service endpoint policy definition name.
  final pulumi.Input<String> serviceEndpointPolicyDefinitionName;
  /// The name of the service endpoint policy name.
  final pulumi.Input<String> serviceEndpointPolicyName;

  /// Creates a new [GetServiceEndpointPolicyDefinitionArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [serviceEndpointPolicyDefinitionName] The name of the service endpoint policy definition name.
  /// [serviceEndpointPolicyName] The name of the service endpoint policy name.
  GetServiceEndpointPolicyDefinitionArgs({
    required String resourceGroupName,
    required String serviceEndpointPolicyDefinitionName,
    required String serviceEndpointPolicyName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceEndpointPolicyDefinitionName = pulumi.Input.asInput<String>(serviceEndpointPolicyDefinitionName),
      serviceEndpointPolicyName = pulumi.Input.asInput<String>(serviceEndpointPolicyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceEndpointPolicyDefinitionName': serviceEndpointPolicyDefinitionName,
      'serviceEndpointPolicyName': serviceEndpointPolicyName,
    };
  }

  factory GetServiceEndpointPolicyDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointPolicyDefinitionArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      serviceEndpointPolicyDefinitionName: map['serviceEndpointPolicyDefinitionName'] as String,
      serviceEndpointPolicyName: map['serviceEndpointPolicyName'] as String,
    );
  }
}

