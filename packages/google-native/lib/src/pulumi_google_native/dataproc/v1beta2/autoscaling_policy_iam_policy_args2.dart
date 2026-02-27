// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'binding47.dart';

/// The set of arguments for AutoscalingPolicyIamPolicy.
class AutoscalingPolicyIamPolicyArgs2 {
  final Input<String> autoscalingPolicyId;

  /// Associates a list of members to a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one member.
  final Input<List<Binding47>>? bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  final Input<String>? etag;
  final Input<String>? location;
  final Input<String>? project;

  /// Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  final Input<int>? version;

  AutoscalingPolicyIamPolicyArgs2({
    required this.autoscalingPolicyId,
    this.bindings,
    this.etag,
    this.location,
    this.project,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicyId'] = autoscalingPolicyId;
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = Input.mapOptionalInputValue<List<Binding47>,
              List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => Input.encodeList<Binding47, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory AutoscalingPolicyIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyIamPolicyArgs2(
      autoscalingPolicyId: Input.asInput<String>(map['autoscalingPolicyId']),
      bindings: Input.asOptionalInput<List<Binding47>>(map['bindings']),
      etag: Input.asOptionalInput<String>(map['etag']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
