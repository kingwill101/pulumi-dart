// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_dedicated_hub_args_doc}
/// Arguments for getDedicatedHub.
/// {@endtemplate}
/// {@macro pulumi_mission_get_dedicated_hub_args_doc}
class GetDedicatedHubArgs {
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The name of the Dedicated Hub Resource
  final pulumi.Input<String> dedicatedHubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedHubArgs].
  /// [communityName] The name of the communityResource Resource
  /// [dedicatedHubName] The name of the Dedicated Hub Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDedicatedHubArgs({
    required this.communityName,
    required this.dedicatedHubName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityName': communityName,
      'dedicatedHubName': dedicatedHubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedHubArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHubArgs(
      communityName: pulumi.Input.fromValue(map['communityName'] as String),
      dedicatedHubName: pulumi.Input.fromValue(map['dedicatedHubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
