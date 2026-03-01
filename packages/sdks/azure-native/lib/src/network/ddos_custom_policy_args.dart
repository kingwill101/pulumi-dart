// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_ddos_custom_policy_args_doc}
/// The set of arguments for DdosCustomPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_ddos_custom_policy_args_doc}
class DdosCustomPolicyArgs {
  /// The name of the DDoS custom policy.
  final pulumi.Input<String>? ddosCustomPolicyName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DdosCustomPolicyArgs].
  /// [ddosCustomPolicyName] The name of the DDoS custom policy.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  DdosCustomPolicyArgs({
    pulumi.Output<String>? ddosCustomPolicyName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ddosCustomPolicyName = pulumi.Input.asOptionalInput<String>(ddosCustomPolicyName),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosCustomPolicyName': ?ddosCustomPolicyName,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DdosCustomPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DdosCustomPolicyArgs(
      ddosCustomPolicyName: map['ddosCustomPolicyName'] == null ? null : pulumi.Output.create<String>(map['ddosCustomPolicyName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

