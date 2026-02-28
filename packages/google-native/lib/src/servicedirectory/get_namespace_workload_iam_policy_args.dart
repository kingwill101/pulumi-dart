// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_get_namespace_workload_iam_policy_args_doc}
/// Arguments for getNamespaceWorkloadIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_get_namespace_workload_iam_policy_args_doc}
class GetNamespaceWorkloadIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workloadId;

  /// Creates a new [GetNamespaceWorkloadIamPolicyArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [workloadId] Required.
  GetNamespaceWorkloadIamPolicyArgs({
    required String location,
    required String namespaceId,
    String? project,
    required String workloadId,
  })  : location = pulumi.Input.asInput<String>(location),
        namespaceId = pulumi.Input.asInput<String>(namespaceId),
        project = pulumi.Input.asOptionalInput<String>(project),
        workloadId = pulumi.Input.asInput<String>(workloadId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadId'] = workloadId;
    return map;
  }

  factory GetNamespaceWorkloadIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceWorkloadIamPolicyArgs(
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workloadId: map['workloadId'] as String,
    );
  }
}
