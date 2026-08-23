// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_community_args_doc}
/// Arguments for getCommunity.
/// {@endtemplate}
/// {@macro pulumi_mission_get_community_args_doc}
class GetCommunityArgs {
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommunityArgs].
  /// [communityName] The name of the communityResource Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCommunityArgs({
    required this.communityName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityName': communityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommunityArgs.fromMap(Map<String, dynamic> map) {
    return GetCommunityArgs(
      communityName: pulumi.Input.fromValue(map['communityName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
