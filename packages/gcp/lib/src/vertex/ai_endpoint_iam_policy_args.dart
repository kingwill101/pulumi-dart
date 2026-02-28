// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_endpoint_iam_policy_ai_endpoint_iam_policy_args_doc}
/// The set of arguments for AiEndpointIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_iam_policy_ai_endpoint_iam_policy_args_doc}
class AiEndpointIamPolicyArgs {
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [AiEndpointIamPolicyArgs].
  /// [endpoint] Required.
  /// [location] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  AiEndpointIamPolicyArgs({
    required String endpoint,
    String? location,
    required String policyData,
    String? project,
  })  : endpoint = pulumi.Input.asInput<String>(endpoint),
        location = pulumi.Input.asOptionalInput<String>(location),
        policyData = pulumi.Input.asInput<String>(policyData),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoint'] = endpoint;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['policyData'] = policyData;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AiEndpointIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamPolicyArgs(
      endpoint: map['endpoint'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
