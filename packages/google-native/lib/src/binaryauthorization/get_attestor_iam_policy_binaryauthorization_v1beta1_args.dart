// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1beta1_get_attestor_iam_policy_binaryauthorization_v1beta1_args_doc}
/// Arguments for getAttestorIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1beta1_get_attestor_iam_policy_binaryauthorization_v1beta1_args_doc}
class GetAttestorIamPolicyBinaryauthorizationV1beta1Args {
  final pulumi.Input<String> attestorId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAttestorIamPolicyBinaryauthorizationV1beta1Args].
  /// [attestorId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAttestorIamPolicyBinaryauthorizationV1beta1Args({
    required String attestorId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      attestorId = pulumi.Input.asInput<String>(attestorId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestorId': attestorId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAttestorIamPolicyBinaryauthorizationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetAttestorIamPolicyBinaryauthorizationV1beta1Args(
      attestorId: map['attestorId'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

