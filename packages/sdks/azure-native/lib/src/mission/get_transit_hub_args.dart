// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_transit_hub_args_doc}
/// Arguments for getTransitHub.
/// {@endtemplate}
/// {@macro pulumi_mission_get_transit_hub_args_doc}
class GetTransitHubArgs {
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the TransitHub Resource
  final pulumi.Input<String> transitHubName;

  /// Creates a new [GetTransitHubArgs].
  /// [communityName] The name of the communityResource Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [transitHubName] The name of the TransitHub Resource
  GetTransitHubArgs({
    required this.communityName,
    required this.resourceGroupName,
    required this.transitHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityName': communityName,
      'resourceGroupName': resourceGroupName,
      'transitHubName': transitHubName,
    };
  }

  factory GetTransitHubArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitHubArgs(
      communityName: (map['communityName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      transitHubName: (map['transitHubName'] as String).input(),
    );
  }
}

