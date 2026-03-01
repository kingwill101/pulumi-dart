// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_client_tls_policy_iam_policy_args_doc}
/// Arguments for getClientTlsPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_client_tls_policy_iam_policy_args_doc}
class GetClientTlsPolicyIamPolicyArgs {
  final pulumi.Input<String> clientTlsPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientTlsPolicyIamPolicyArgs].
  /// [clientTlsPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetClientTlsPolicyIamPolicyArgs({
    required String clientTlsPolicyId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : clientTlsPolicyId = pulumi.Input.asInput<String>(clientTlsPolicyId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTlsPolicyId': clientTlsPolicyId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetClientTlsPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClientTlsPolicyIamPolicyArgs(
      clientTlsPolicyId: map['clientTlsPolicyId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
