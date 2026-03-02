// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_tunnel_policy_args_doc}
/// Arguments for getTunnelPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_tunnel_policy_args_doc}
class GetTunnelPolicyArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Tunnel Policy under the profile.
  final pulumi.Input<String> tunnelPolicyName;

  /// Creates a new [GetTunnelPolicyArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [tunnelPolicyName] Name of the Tunnel Policy under the profile.
  GetTunnelPolicyArgs({
    required this.profileName,
    required this.resourceGroupName,
    required this.tunnelPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'tunnelPolicyName': tunnelPolicyName,
    };
  }

  factory GetTunnelPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelPolicyArgs(
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tunnelPolicyName: (map['tunnelPolicyName'] as String).input(),
    );
  }
}

