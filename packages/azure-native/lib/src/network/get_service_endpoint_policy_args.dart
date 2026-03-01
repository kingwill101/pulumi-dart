// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_service_endpoint_policy_args_doc}
/// Arguments for getServiceEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_get_service_endpoint_policy_args_doc}
class GetServiceEndpointPolicyArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service endpoint policy.
  final pulumi.Input<String> serviceEndpointPolicyName;

  /// Creates a new [GetServiceEndpointPolicyArgs].
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceEndpointPolicyName] The name of the service endpoint policy.
  GetServiceEndpointPolicyArgs({
    String? expand,
    required String resourceGroupName,
    required String serviceEndpointPolicyName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceEndpointPolicyName = pulumi.Input.asInput<String>(serviceEndpointPolicyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'serviceEndpointPolicyName': serviceEndpointPolicyName,
    };
  }

  factory GetServiceEndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointPolicyArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceEndpointPolicyName: map['serviceEndpointPolicyName'] as String,
    );
  }
}

