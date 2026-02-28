// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_endpoint_policy_iam_policy_networkservices_v1beta1_args_doc}
/// Arguments for getEndpointPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_endpoint_policy_iam_policy_networkservices_v1beta1_args_doc}
class GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args].
  /// [endpointPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args({
    required String endpointPolicyId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : endpointPolicyId = pulumi.Input.asInput<String>(endpointPolicyId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointPolicyId'] = endpointPolicyId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args(
      endpointPolicyId: map['endpointPolicyId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
