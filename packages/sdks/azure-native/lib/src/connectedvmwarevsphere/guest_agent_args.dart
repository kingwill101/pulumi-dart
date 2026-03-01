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
  final pulumi.Input<GuestCredential>? credentials;
  /// HTTP Proxy configuration for the VM.
  final pulumi.Input<HttpProxyConfiguration>? httpProxyConfig;
  /// Name of the guestAgents.
  final pulumi.Input<String>? name;
  /// The resource id of the private link scope this machine is assigned to, if any.
  final pulumi.Input<String>? privateLinkScopeResourceId;
  /// Gets or sets the guest agent provisioning action.
  final pulumi.Input<String>? provisioningAction;
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
  GuestAgentArgs({
    pulumi.Output<GuestCredential>? credentials,
    pulumi.Output<HttpProxyConfiguration>? httpProxyConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateLinkScopeResourceId,
    pulumi.Output<String>? provisioningAction,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualMachineName,
  }) :
      credentials = pulumi.Input.asOptionalInput<GuestCredential>(credentials),
      httpProxyConfig = pulumi.Input.asOptionalInput<HttpProxyConfiguration>(httpProxyConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateLinkScopeResourceId = pulumi.Input.asOptionalInput<String>(privateLinkScopeResourceId),
      provisioningAction = pulumi.Input.asOptionalInput<String>(provisioningAction),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

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
      credentials: map['credentials'] == null ? null : pulumi.Output.create<GuestCredential>(GuestCredential.fromMap((map['credentials'] as Map).cast<String, dynamic>())),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : pulumi.Output.create<HttpProxyConfiguration>(HttpProxyConfiguration.fromMap((map['httpProxyConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateLinkScopeResourceId: map['privateLinkScopeResourceId'] == null ? null : pulumi.Output.create<String>(map['privateLinkScopeResourceId'] as String),
      provisioningAction: map['provisioningAction'] == null ? null : pulumi.Output.create<String>(map['provisioningAction'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

