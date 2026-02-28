// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_dataproc_v1beta2.dart';

/// {@template pulumi_dataproc_v1beta2_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// The set of arguments for RegionAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
class RegionAutoscalingPolicyIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> autoscalingPolicyId;

  /// Associates a list of members to a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one member.
  final pulumi.Input<List<BindingDataprocV1beta2>>? bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [RegionAutoscalingPolicyIamPolicyDataprocV1beta2Args].
  /// [autoscalingPolicyId] Required.
  /// [bindings] Associates a list of members to a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one member.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  /// [project] Optional.
  /// [regionId] Required.
  /// [version] Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  RegionAutoscalingPolicyIamPolicyDataprocV1beta2Args({
    required String autoscalingPolicyId,
    List<BindingDataprocV1beta2>? bindings,
    String? etag,
    String? project,
    required String regionId,
    int? version,
  })  : autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
        bindings = pulumi.Input.asOptionalInput<List<BindingDataprocV1beta2>>(
            bindings),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        project = pulumi.Input.asOptionalInput<String>(project),
        regionId = pulumi.Input.asInput<String>(regionId),
        version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicyId'] = autoscalingPolicyId;
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = pulumi.Input.mapOptionalInputValue<
              List<BindingDataprocV1beta2>, List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => pulumi.Input.encodeList<BindingDataprocV1beta2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory RegionAutoscalingPolicyIamPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return RegionAutoscalingPolicyIamPolicyDataprocV1beta2Args(
      autoscalingPolicyId: map['autoscalingPolicyId'] as String,
      bindings: map['bindings'] == null
          ? null
          : pulumi.Input.decodeList<BindingDataprocV1beta2>(
              map['bindings'],
              (value) => BindingDataprocV1beta2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : map['etag'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
