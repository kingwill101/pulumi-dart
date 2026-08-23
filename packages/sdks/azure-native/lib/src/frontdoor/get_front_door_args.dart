// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_frontdoor_get_front_door_args_doc}
/// Arguments for getFrontDoor.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_get_front_door_args_doc}
class GetFrontDoorArgs {
  /// Name of the Front Door which is globally unique.
  final pulumi.Input<String> frontDoorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontDoorArgs].
  /// [frontDoorName] Name of the Front Door which is globally unique.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetFrontDoorArgs({
    required this.frontDoorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontDoorName': frontDoorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontDoorArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontDoorArgs(
      frontDoorName: pulumi.Input.fromValue(map['frontDoorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
