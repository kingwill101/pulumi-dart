// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1_get_namespace_service_iam_policy_args_doc}
/// Arguments for getNamespaceServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1_get_namespace_service_iam_policy_args_doc}
class GetNamespaceServiceIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetNamespaceServiceIamPolicyArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetNamespaceServiceIamPolicyArgs({
    required String location,
    required String namespaceId,
    String? project,
    required String serviceId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetNamespaceServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceServiceIamPolicyArgs(
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}

