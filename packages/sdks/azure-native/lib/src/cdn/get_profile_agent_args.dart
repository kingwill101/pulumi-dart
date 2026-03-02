// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_profile_agent_args_doc}
/// Arguments for getProfileAgent.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_profile_agent_args_doc}
class GetProfileAgentArgs {
  /// Name of the web agent association.
  final pulumi.Input<String> agentName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProfileAgentArgs].
  /// [agentName] Name of the web agent association.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProfileAgentArgs({
    required this.agentName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProfileAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetProfileAgentArgs(
      agentName: (map['agentName'] as String).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

