// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_domain_iam_policy_managedidentities_v1beta1_args_doc}
/// Arguments for getDomainIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_domain_iam_policy_managedidentities_v1beta1_args_doc}
class GetDomainIamPolicyManagedidentitiesV1beta1Args {
  final pulumi.Input<String> domainId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainIamPolicyManagedidentitiesV1beta1Args].
  /// [domainId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDomainIamPolicyManagedidentitiesV1beta1Args({
    required String domainId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : domainId = pulumi.Input.asInput<String>(domainId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDomainIamPolicyManagedidentitiesV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDomainIamPolicyManagedidentitiesV1beta1Args(
      domainId: map['domainId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
