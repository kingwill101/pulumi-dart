// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_resource_policy_get_resource_policy_args_doc}
/// Arguments for getResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_resource_policy_get_resource_policy_args_doc}
class GetResourcePolicyArgs {
  /// The name of the Resource Policy.
  final pulumi.Input<String> name;

  /// Project from which to list the Resource Policy. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;

  /// Region where the Resource Policy resides.
  final pulumi.Input<String>? region;

  /// Creates a new [GetResourcePolicyArgs].
  /// [name] The name of the Resource Policy.
  /// [project] Project from which to list the Resource Policy. Defaults to project declared in the provider.
  /// [region] Region where the Resource Policy resides.
  GetResourcePolicyArgs({
    required String name,
    String? project,
    String? region,
  })  : name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
