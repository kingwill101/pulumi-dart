// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_endpoint_iam_policy_args_doc}
/// Arguments for getEndpointIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_endpoint_iam_policy_args_doc}
class GetEndpointIamPolicyArgs {
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointIamPolicyArgs].
  /// [endpointId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEndpointIamPolicyArgs({
    required String endpointId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : endpointId = pulumi.Input.asInput<String>(endpointId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEndpointIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointIamPolicyArgs(
      endpointId: map['endpointId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
