// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_ddos_protection_plan_args_doc}
/// The set of arguments for DdosProtectionPlan.
/// {@endtemplate}
/// {@macro pulumi_network_ddos_protection_plan_args_doc}
class DdosProtectionPlanArgs {
  /// The name of the DDoS protection plan.
  final pulumi.Input<String>? ddosProtectionPlanName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DdosProtectionPlanArgs].
  /// [ddosProtectionPlanName] The name of the DDoS protection plan.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  DdosProtectionPlanArgs({
    pulumi.Output<String>? ddosProtectionPlanName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ddosProtectionPlanName = pulumi.Input.asOptionalInput<String>(ddosProtectionPlanName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtectionPlanName': ?ddosProtectionPlanName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DdosProtectionPlanArgs.fromMap(Map<String, dynamic> map) {
    return DdosProtectionPlanArgs(
      ddosProtectionPlanName: map['ddosProtectionPlanName'] == null ? null : pulumi.Output.create<String>(map['ddosProtectionPlanName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

