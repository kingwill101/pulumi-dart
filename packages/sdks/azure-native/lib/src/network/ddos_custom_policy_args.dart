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
    this.ddosCustomPolicyName,
    this.id,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

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
      ddosCustomPolicyName: (() {
        final guardedValue = map['ddosCustomPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
