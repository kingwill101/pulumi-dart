// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_network_policy_args_doc}
/// Arguments for getNetworkPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_network_policy_args_doc}
class GetNetworkPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> networkPolicyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkPolicyArgs].
  /// [location] Required.
  /// [networkPolicyId] Required.
  /// [project] Optional.
  GetNetworkPolicyArgs({
    required String location,
    required String networkPolicyId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       networkPolicyId = pulumi.Input.asInput<String>(networkPolicyId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'networkPolicyId': networkPolicyId,
      'project': ?project,
    };
  }

  factory GetNetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyArgs(
      location: map['location'] as String,
      networkPolicyId: map['networkPolicyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
