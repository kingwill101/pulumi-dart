// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_credential.dart';
import 'http_proxy_configuration.dart';

/// {@template pulumi_connectedvmwarevsphere_guest_agent_args_doc}
/// The set of arguments for GuestAgent.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_guest_agent_args_doc}
class GuestAgentArgs {
  /// Username / Password Credentials to provision guest agent.
  final pulumi.Input<GuestCredential?>? credentials;
  /// HTTP Proxy configuration for the VM.
  final pulumi.Input<HttpProxyConfiguration?>? httpProxyConfig;
  /// Name of the guestAgents.
  final pulumi.Input<String?>? name;
  /// The resource id of the private link scope this machine is assigned to, if any.
  final pulumi.Input<String?>? privateLinkScopeResourceId;
  /// Gets or sets the guest agent provisioning action.
  final pulumi.Input<dynamic>? provisioningAction;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GuestAgentArgs].
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [name] Name of the guestAgents.
  /// [privateLinkScopeResourceId] The resource id of the private link scope this machine is assigned to, if any.
  /// [provisioningAction] Gets or sets the guest agent provisioning action.
  /// [resourceGroupName] The Resource Group Name.
  /// [virtualMachineName] Name of the vm.
  const GuestAgentArgs({
    this.credentials,
    this.httpProxyConfig,
    this.name,
    this.privateLinkScopeResourceId,
    this.provisioningAction,
    required this.resourceGroupName,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<GuestCredential, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'httpProxyConfig': ?pulumi.Input.mapOptionalInputValue<HttpProxyConfiguration, Map<String, dynamic>>(httpProxyConfig, (value) => value.toMap()),
      'name': ?name,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'provisioningAction': ?provisioningAction,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return GuestAgentArgs(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpProxyConfig: (() { final guardedValue = map['httpProxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpProxyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkScopeResourceId: (() { final guardedValue = map['privateLinkScopeResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningAction: (() { final guardedValue = map['provisioningAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Input.fromValue(map['virtualMachineName'] as String),
    );
  }
}
