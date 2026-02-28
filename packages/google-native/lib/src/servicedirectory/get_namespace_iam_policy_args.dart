// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1_get_namespace_iam_policy_args_doc}
/// Arguments for getNamespaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1_get_namespace_iam_policy_args_doc}
class GetNamespaceIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNamespaceIamPolicyArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  GetNamespaceIamPolicyArgs({
    required String location,
    required String namespaceId,
    String? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
    };
  }

  factory GetNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIamPolicyArgs(
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

