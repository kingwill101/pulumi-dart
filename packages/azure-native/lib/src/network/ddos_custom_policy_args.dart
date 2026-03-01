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
    String? ddosCustomPolicyName,
    String? id,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
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
      ddosCustomPolicyName: map['ddosCustomPolicyName'] == null ? null : map['ddosCustomPolicyName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

