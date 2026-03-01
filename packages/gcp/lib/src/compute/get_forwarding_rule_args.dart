// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_forwarding_rule_get_forwarding_rule_args_doc}
/// Arguments for getForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_get_forwarding_rule_get_forwarding_rule_args_doc}
class GetForwardingRuleArgs {
  /// The name of the forwarding rule.
  ///
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region in which the resource belongs. If it
  /// is not provided, the project region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetForwardingRuleArgs].
  /// [name] The name of the forwarding rule.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetForwardingRuleArgs({required String name, String? project, String? region})
    : name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
