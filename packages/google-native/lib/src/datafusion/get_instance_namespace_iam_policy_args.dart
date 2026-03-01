// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafusion_v1beta1_get_instance_namespace_iam_policy_args_doc}
/// Arguments for getInstanceNamespaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datafusion_v1beta1_get_instance_namespace_iam_policy_args_doc}
class GetInstanceNamespaceIamPolicyArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceNamespaceIamPolicyArgs].
  /// [instanceId] Required.
  /// [location] Required.
  /// [namespaceId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetInstanceNamespaceIamPolicyArgs({
    required String instanceId,
    required String location,
    required String namespaceId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : instanceId = pulumi.Input.asInput<String>(instanceId),
       location = pulumi.Input.asInput<String>(location),
       namespaceId = pulumi.Input.asInput<String>(namespaceId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'namespaceId': namespaceId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetInstanceNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceNamespaceIamPolicyArgs(
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
