// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_server_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getServerTlsPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_server_tls_policy_iam_policy_networksecurity_v1beta1_args_doc}
class GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serverTlsPolicyId;

  /// Creates a new [GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serverTlsPolicyId] Required.
  GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String serverTlsPolicyId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       serverTlsPolicyId = pulumi.Input.asInput<String>(serverTlsPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serverTlsPolicyId': serverTlsPolicyId,
    };
  }

  factory GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServerTlsPolicyIamPolicyNetworksecurityV1beta1Args(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      serverTlsPolicyId: map['serverTlsPolicyId'] as String,
    );
  }
}
