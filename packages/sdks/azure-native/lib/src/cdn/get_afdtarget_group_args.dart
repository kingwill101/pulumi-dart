// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_afdtarget_group_args_doc}
/// Arguments for getAFDTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_afdtarget_group_args_doc}
class GetAFDTargetGroupArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Target Group under the profile.
  final pulumi.Input<String> targetGroupName;

  /// Creates a new [GetAFDTargetGroupArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [targetGroupName] Name of the Target Group under the profile.
  GetAFDTargetGroupArgs({
    required this.profileName,
    required this.resourceGroupName,
    required this.targetGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'targetGroupName': targetGroupName,
    };
  }

  factory GetAFDTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAFDTargetGroupArgs(
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      targetGroupName: (map['targetGroupName'] as String).input(),
    );
  }
}

