// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// {@template pulumi_cdn_profile_agent_args_doc}
/// The set of arguments for ProfileAgent.
/// {@endtemplate}
/// {@macro pulumi_cdn_profile_agent_args_doc}
class ProfileAgentArgs {
  /// Name of the web agent association.
  final pulumi.Input<String>? agentName;
  /// List of custom domains associated with this agent link.
  final pulumi.Input<List<ResourceReference>> customDomains;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Reference to the web agent resource.
  final pulumi.Input<ResourceReference> webAgent;

  /// Creates a new [ProfileAgentArgs].
  /// [agentName] Name of the web agent association.
  /// [customDomains] List of custom domains associated with this agent link.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [webAgent] Reference to the web agent resource.
  ProfileAgentArgs({
    pulumi.Output<String>? agentName,
    required pulumi.Output<List<ResourceReference>> customDomains,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<ResourceReference> webAgent,
  }) :
      agentName = pulumi.Input.asOptionalInput<String>(agentName),
      customDomains = pulumi.Input.asInput<List<ResourceReference>>(customDomains),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      webAgent = pulumi.Input.asInput<ResourceReference>(webAgent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'customDomains': pulumi.Input.mapInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'webAgent': pulumi.Input.mapInputValue<ResourceReference, Map<String, dynamic>>(webAgent, (value) => value.toMap()),
    };
  }

  factory ProfileAgentArgs.fromMap(Map<String, dynamic> map) {
    return ProfileAgentArgs(
      agentName: map['agentName'] == null ? null : pulumi.Output.create<String>(map['agentName'] as String),
      customDomains: pulumi.Output.create<List<ResourceReference>>(pulumi.Input.decodeList<ResourceReference>(map['customDomains'], (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>()))),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      webAgent: pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['webAgent'] as Map).cast<String, dynamic>())),
    );
  }
}

