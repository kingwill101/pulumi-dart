// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_service_lb_policy_iam_policy_args_doc}
/// Arguments for getServiceLbPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_service_lb_policy_iam_policy_args_doc}
class GetServiceLbPolicyIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceLbPolicyId;

  /// Creates a new [GetServiceLbPolicyIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceLbPolicyId] Required.
  GetServiceLbPolicyIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String serviceLbPolicyId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       serviceLbPolicyId = pulumi.Input.asInput<String>(serviceLbPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceLbPolicyId': serviceLbPolicyId,
    };
  }

  factory GetServiceLbPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLbPolicyIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      serviceLbPolicyId: map['serviceLbPolicyId'] as String,
    );
  }
}
