// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_iam_v1_binding2.dart';

/// The set of arguments for FeaturestoreEntityTypeIamPolicy.
class FeaturestoreEntityTypeIamPolicyArgs2 {
  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final Input<List<GoogleIamV1Binding2>>? bindings;
  final Input<String> entityTypeId;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final Input<String>? etag;
  final Input<String> featurestoreId;
  final Input<String>? location;
  final Input<String>? project;

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final Input<int>? version;

  FeaturestoreEntityTypeIamPolicyArgs2({
    this.bindings,
    required this.entityTypeId,
    this.etag,
    required this.featurestoreId,
    this.location,
    this.project,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = Input.mapOptionalInputValue<List<GoogleIamV1Binding2>,
              List<Map<String, dynamic>>>(
          bindingsValue,
          (value) =>
              Input.encodeList<GoogleIamV1Binding2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['entityTypeId'] = entityTypeId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featurestoreId'] = featurestoreId;
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

  factory FeaturestoreEntityTypeIamPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return FeaturestoreEntityTypeIamPolicyArgs2(
      bindings:
          Input.asOptionalInput<List<GoogleIamV1Binding2>>(map['bindings']),
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      featurestoreId: Input.asInput<String>(map['featurestoreId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
