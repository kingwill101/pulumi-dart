// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_ddos_protection_plan_args_doc}
/// Arguments for getDdosProtectionPlan.
/// {@endtemplate}
/// {@macro pulumi_network_get_ddos_protection_plan_args_doc}
class GetDdosProtectionPlanArgs {
  /// The name of the DDoS protection plan.
  final pulumi.Input<String> ddosProtectionPlanName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDdosProtectionPlanArgs].
  /// [ddosProtectionPlanName] The name of the DDoS protection plan.
  /// [resourceGroupName] The name of the resource group.
  GetDdosProtectionPlanArgs({
    required String ddosProtectionPlanName,
    required String resourceGroupName,
  }) :
      ddosProtectionPlanName = pulumi.Input.asInput<String>(ddosProtectionPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtectionPlanName': ddosProtectionPlanName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDdosProtectionPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetDdosProtectionPlanArgs(
      ddosProtectionPlanName: map['ddosProtectionPlanName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

