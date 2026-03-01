// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_port_rule_response.dart';

class JitNetworkAccessPolicyVirtualMachineResponse {
  /// Resource ID of the virtual machine that is linked to this policy
  final String id;
  /// Port configurations for the virtual machine
  final List<JitNetworkAccessPortRuleResponse> ports;
  /// Public IP address of the Azure Firewall that is linked to this policy, if applicable
  final String? publicIpAddress;

  /// Creates a new [JitNetworkAccessPolicyVirtualMachineResponse].
  /// [id] Resource ID of the virtual machine that is linked to this policy
  /// [ports] Port configurations for the virtual machine
  /// [publicIpAddress] Public IP address of the Azure Firewall that is linked to this policy, if applicable
  JitNetworkAccessPolicyVirtualMachineResponse({
    required this.id,
    required this.ports,
    this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ports': pulumi.Input.encodeList<JitNetworkAccessPortRuleResponse, Map<String, dynamic>>(ports, (value) => value.toMap()),
      'publicIpAddress': ?publicIpAddress,
    };
  }

  factory JitNetworkAccessPolicyVirtualMachineResponse.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessPolicyVirtualMachineResponse(
      id: map['id'] as String,
      ports: pulumi.Input.decodeList<JitNetworkAccessPortRuleResponse>(map['ports'], (value) => JitNetworkAccessPortRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicIpAddress: map['publicIpAddress'] == null ? null : map['publicIpAddress'] as String,
    );
  }
}

