// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_endpoint_policy_args_doc}
/// Arguments for getEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_endpoint_policy_args_doc}
class GetEndpointPolicyArgs {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointPolicyArgs].
  /// [endpointPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEndpointPolicyArgs({
    required String endpointPolicyId,
    required String location,
    String? project,
  })  : endpointPolicyId = pulumi.Input.asInput<String>(endpointPolicyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointPolicyId'] = endpointPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointPolicyArgs(
      endpointPolicyId: map['endpointPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
