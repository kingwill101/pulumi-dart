// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_firewall_policy_firewall_policy_args_doc}
/// The set of arguments for FirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_firewall_policy_firewall_policy_args_doc}
class FirewallPolicyArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The parent of the firewall policy.
  final pulumi.Input<String> parent;

  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created.
  /// This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> shortName;

  /// Creates a new [FirewallPolicyArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [parent] The parent of the firewall policy.
  /// [shortName] User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created.
  FirewallPolicyArgs({
    String? description,
    required String parent,
    required String shortName,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       parent = pulumi.Input.asInput<String>(parent),
       shortName = pulumi.Input.asInput<String>(shortName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'parent': parent,
      'shortName': shortName,
    };
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      parent: map['parent'] as String,
      shortName: map['shortName'] as String,
    );
  }
}
