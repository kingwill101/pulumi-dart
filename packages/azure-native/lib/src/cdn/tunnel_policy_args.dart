// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference.dart';
import 'resource_reference.dart';

/// {@template pulumi_cdn_tunnel_policy_args_doc}
/// The set of arguments for TunnelPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_tunnel_policy_args_doc}
class TunnelPolicyArgs {
  /// Domains referenced by this tunnel policy.
  final pulumi.Input<List<ActivatedResourceReference>> domains;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Target Groups referenced by this tunnel policy.
  final pulumi.Input<List<ResourceReference>>? targetGroups;
  /// Name of the Tunnel Policy under the profile.
  final pulumi.Input<String>? tunnelPolicyName;
  /// Protocol this tunnel will use for allowing traffic to backends.
  final pulumi.Input<String>? tunnelType;

  /// Creates a new [TunnelPolicyArgs].
  /// [domains] Domains referenced by this tunnel policy.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [targetGroups] Target Groups referenced by this tunnel policy.
  /// [tunnelPolicyName] Name of the Tunnel Policy under the profile.
  /// [tunnelType] Protocol this tunnel will use for allowing traffic to backends.
  TunnelPolicyArgs({
    required List<ActivatedResourceReference> domains,
    required String profileName,
    required String resourceGroupName,
    List<ResourceReference>? targetGroups,
    String? tunnelPolicyName,
    String? tunnelType,
  }) :
      domains = pulumi.Input.asInput<List<ActivatedResourceReference>>(domains),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetGroups = pulumi.Input.asOptionalInput<List<ResourceReference>>(targetGroups),
      tunnelPolicyName = pulumi.Input.asOptionalInput<String>(tunnelPolicyName),
      tunnelType = pulumi.Input.asOptionalInput<String>(tunnelType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.mapInputValue<List<ActivatedResourceReference>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<ActivatedResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'targetGroups': ?pulumi.Input.mapOptionalInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(targetGroups, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tunnelPolicyName': ?tunnelPolicyName,
      'tunnelType': ?tunnelType,
    };
  }

  factory TunnelPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TunnelPolicyArgs(
      domains: pulumi.Input.decodeList<ActivatedResourceReference>(map['domains'], (value) => ActivatedResourceReference.fromMap((value as Map).cast<String, dynamic>())),
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      targetGroups: map['targetGroups'] == null ? null : pulumi.Input.decodeList<ResourceReference>(map['targetGroups'], (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>())),
      tunnelPolicyName: map['tunnelPolicyName'] == null ? null : map['tunnelPolicyName'] as String,
      tunnelType: map['tunnelType'] == null ? null : map['tunnelType'] as String,
    );
  }
}

