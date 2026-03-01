// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_policy_virtual_machine.dart';
import 'jit_network_access_request.dart';

/// {@template pulumi_security_jit_network_access_policy_args_doc}
/// The set of arguments for JitNetworkAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_security_jit_network_access_policy_args_doc}
class JitNetworkAccessPolicyArgs {
  /// The location where ASC stores the data of the subscription. can be retrieved from Get locations
  final pulumi.Input<String> ascLocation;
  /// Name of a Just-in-Time access configuration policy.
  final pulumi.Input<String>? jitNetworkAccessPolicyName;
  /// Kind of the resource
  final pulumi.Input<String>? kind;
  final pulumi.Input<List<JitNetworkAccessRequest>>? requests;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Configurations for Microsoft.Compute/virtualMachines resource type.
  final pulumi.Input<List<JitNetworkAccessPolicyVirtualMachine>> virtualMachines;

  /// Creates a new [JitNetworkAccessPolicyArgs].
  /// [ascLocation] The location where ASC stores the data of the subscription. can be retrieved from Get locations
  /// [jitNetworkAccessPolicyName] Name of a Just-in-Time access configuration policy.
  /// [kind] Kind of the resource
  /// [requests] Optional.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [virtualMachines] Configurations for Microsoft.Compute/virtualMachines resource type.
  JitNetworkAccessPolicyArgs({
    required String ascLocation,
    String? jitNetworkAccessPolicyName,
    String? kind,
    List<JitNetworkAccessRequest>? requests,
    required String resourceGroupName,
    required List<JitNetworkAccessPolicyVirtualMachine> virtualMachines,
  }) :
      ascLocation = pulumi.Input.asInput<String>(ascLocation),
      jitNetworkAccessPolicyName = pulumi.Input.asOptionalInput<String>(jitNetworkAccessPolicyName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      requests = pulumi.Input.asOptionalInput<List<JitNetworkAccessRequest>>(requests),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachines = pulumi.Input.asInput<List<JitNetworkAccessPolicyVirtualMachine>>(virtualMachines);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascLocation': ascLocation,
      'jitNetworkAccessPolicyName': ?jitNetworkAccessPolicyName,
      'kind': ?kind,
      'requests': ?pulumi.Input.mapOptionalInputValue<List<JitNetworkAccessRequest>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<JitNetworkAccessRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'virtualMachines': pulumi.Input.mapInputValue<List<JitNetworkAccessPolicyVirtualMachine>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<JitNetworkAccessPolicyVirtualMachine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JitNetworkAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessPolicyArgs(
      ascLocation: map['ascLocation'] as String,
      jitNetworkAccessPolicyName: map['jitNetworkAccessPolicyName'] == null ? null : map['jitNetworkAccessPolicyName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      requests: map['requests'] == null ? null : pulumi.Input.decodeList<JitNetworkAccessRequest>(map['requests'], (value) => JitNetworkAccessRequest.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      virtualMachines: pulumi.Input.decodeList<JitNetworkAccessPolicyVirtualMachine>(map['virtualMachines'], (value) => JitNetworkAccessPolicyVirtualMachine.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

