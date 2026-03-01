// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_frontdoor_get_front_door_args_doc}
/// Arguments for getFrontDoor.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_get_front_door_args_doc}
class GetFrontDoorArgs {
  /// Name of the Front Door which is globally unique.
  final pulumi.Input<String> frontDoorName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontDoorArgs].
  /// [frontDoorName] Name of the Front Door which is globally unique.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  GetFrontDoorArgs({
    required pulumi.Output<String> frontDoorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      frontDoorName = pulumi.Input.asInput<String>(frontDoorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontDoorName': frontDoorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontDoorArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontDoorArgs(
      frontDoorName: pulumi.Output.create<String>(map['frontDoorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

