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
    required this.communityEndpointName,
    required this.communityName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityEndpointName': communityEndpointName,
      'communityName': communityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommunityEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetCommunityEndpointArgs(
      communityEndpointName: (map['communityEndpointName'] as String).input(),
      communityName: (map['communityName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

