// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_community_endpoint_args_doc}
/// Arguments for getCommunityEndpoint.
/// {@endtemplate}
/// {@macro pulumi_mission_get_community_endpoint_args_doc}
class GetCommunityEndpointArgs {
  /// The name of the Community Endpoint Resource
  final pulumi.Input<String> communityEndpointName;
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommunityEndpointArgs].
  /// [communityEndpointName] The name of the Community Endpoint Resource
  /// [communityName] The name of the communityResource Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCommunityEndpointArgs({
    required pulumi.Output<String> communityEndpointName,
    required pulumi.Output<String> communityName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      communityEndpointName = pulumi.Input.asInput<String>(communityEndpointName),
      communityName = pulumi.Input.asInput<String>(communityName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityEndpointName': communityEndpointName,
      'communityName': communityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommunityEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetCommunityEndpointArgs(
      communityEndpointName: pulumi.Output.create<String>(map['communityEndpointName'] as String),
      communityName: pulumi.Output.create<String>(map['communityName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

