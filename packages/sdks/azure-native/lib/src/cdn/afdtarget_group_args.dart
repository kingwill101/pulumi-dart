// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_endpoint.dart';

/// {@template pulumi_cdn_afdtarget_group_args_doc}
/// The set of arguments for AFDTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_afdtarget_group_args_doc}
class AFDTargetGroupArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// TargetEndpoint list referenced by this target group.
  final pulumi.Input<List<TargetEndpoint>> targetEndpoints;
  /// Name of the Target Group under the profile.
  final pulumi.Input<String>? targetGroupName;

  /// Creates a new [AFDTargetGroupArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium which is unique within the resource group.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [targetEndpoints] TargetEndpoint list referenced by this target group.
  /// [targetGroupName] Name of the Target Group under the profile.
  const AFDTargetGroupArgs({
    required this.profileName,
    required this.resourceGroupName,
    required this.targetEndpoints,
    this.targetGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'targetEndpoints': pulumi.Input.mapInputValue<List<TargetEndpoint>, List<Map<String, dynamic>>>(targetEndpoints, (value) => pulumi.Input.encodeList<TargetEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetGroupName': ?targetGroupName,
    };
  }

  factory AFDTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return AFDTargetGroupArgs(
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      targetEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<TargetEndpoint>(map['targetEndpoints']!, (value) => TargetEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      targetGroupName: (() { final guardedValue = map['targetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

