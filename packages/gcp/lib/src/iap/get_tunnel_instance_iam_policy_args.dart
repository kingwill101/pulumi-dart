// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_tunnel_instance_iam_policy_get_tunnel_instance_iam_policy_args_doc}
/// Arguments for getTunnelInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_tunnel_instance_iam_policy_get_tunnel_instance_iam_policy_args_doc}
class GetTunnelInstanceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> instance;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetTunnelInstanceIamPolicyArgs].
  /// [instance] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] Used to find the parent resource to bind the IAM policy to. If not specified,
  GetTunnelInstanceIamPolicyArgs({
    required String instance,
    String? project,
    String? zone,
  })  : instance = pulumi.Input.asInput<String>(instance),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetTunnelInstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelInstanceIamPolicyArgs(
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
